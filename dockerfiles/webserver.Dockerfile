FROM ubuntu:18.04
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update -y
RUN apt-get upgrade -y

# server
RUN apt-get install -y nginx

# php handler (since nginx won't handle it unlike apache)
RUN apt-get install php5-fpm

# php 7.4
RUN apt -y install software-properties-common
RUN add-apt-repository ppa:ondrej/php
RUN apt-get update
RUN apt -y install php7.4
RUN apt-get -y install php7.4-dev
RUN apt-get -y install php7.4-mysql
RUN apt-get -y install php7.4-curl
RUN apt-get -y install php7.4-json
RUN apt-get -y install php7.4-common
RUN apt-get -y install php7.4-mbstring
RUN apt-get -y install php7.4-gmp
RUN apt-get -y install php7.4-bcmath
RUN apt-get -y install php7.4-xml
RUN apt-get -y install php7.4-zip
RUN apt-get -y install php7.4-gd

# make apache understand php <-- nginx doesn't need to understand php since fpm is understanding and handling it
#RUN apt-get install -y libapache2-mod-php
#COPY ../server/php.ini /etc/php/7.4/fpm/php.ini .........only need it if we need to pre-set a php setting................

# composer
RUN apt-get install -y composer
RUN composer --version

# npm, node
ENV NODE_VERSION=14.15.0
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.36.0/install.sh | bash
ENV NVM_DIR=/root/.nvm
RUN . "$NVM_DIR/nvm.sh" && nvm install ${NODE_VERSION}
RUN . "$NVM_DIR/nvm.sh" && nvm use v${NODE_VERSION}
RUN . "$NVM_DIR/nvm.sh" && nvm alias default v${NODE_VERSION}
ENV PATH="/root/.nvm/versions/node/v${NODE_VERSION}/bin/:${PATH}"
RUN node --version
RUN npm --version

# misc
RUN apt-get update
RUN apt-get install -y wget
RUN apt-get install -y zip
RUN apt-get install -y unzip

# set up virtual host in docker container
#COPY ./server/vhost.conf /etc/nginx/conf.d/app.conf .........already handled in ../docker-compose.yml under dev_webserver->volumes.........
#COPY ./server/nginx.conf /etc/nginx/nginx.conf .........probably will always stick to defaults for this one..............

# equivalent of a2dissite and a2ensite
#RUN rm -rfv /etc/nginx/sites-enabled/*.conf  .........already handled in ../docker-compose.yml under dev_webserver->volumes.........
#RUN ln -s /etc/nginx/sites-available/vhost.conf /etc/nginx/sites-enabled/vhost.conf  .........already handled in ../docker-compose.yml under dev_webserver->volumes.........

# copy laravel project
RUN mkdir /var/www/html/laravel-project
COPY . /var/www/html/laravel-project/
COPY ./server/.env /var/www/html/laravel-project/

# get composer
RUN chmod +x /var/www/html/laravel-project/server/getcomposer.sh
RUN /var/www/html/laravel-project/server/getcomposer.sh

# navigate to and compile project
WORKDIR /var/www/html/laravel-project
RUN composer update
RUN composer install
RUN npm install

# TODO: set up Laravel folder permissions correctly
# see: https://stackoverflow.com/q/30639174
RUN chown -R root:www-data /var/www/html/laravel-project
RUN find /var/www/html/laravel-project -type f -exec chmod 664 {} \;    
RUN find /var/www/html/laravel-project -type d -exec chmod 775 {} \;
RUN chgrp -R www-data storage bootstrap/cache
RUN chmod -R ug+rwx storage bootstrap/cache

# compile ui, gen key, and migrate
RUN npm rebuild
RUN npm run dev
RUN php artisan key:generate
#RUN php artisan migrate:fresh --seed   <--- requires the docker containers to be up and running

# allow execute on shell script
RUN chmod +x /var/www/html/laravel-project/server/init.sh

# run container
ENTRYPOINT ["/var/www/html/laravel-project/server/init.sh"]
#RUN a2dissite 000-default.conf <-- similar commands not available with nginx, manual approach above
#RUN a2ensite vhost.conf <-- similar commands not available with nginx, manual approach above
#RUN a2enmod rewrite <-- similar commands not available with nginx, solved in ../server/vhost.conf
RUN service php5-fpm restart
RUN service nginx restart
EXPOSE 80
EXPOSE 443
