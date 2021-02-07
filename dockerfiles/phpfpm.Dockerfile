FROM php:7.4-fpm
LABEL MAINTAINER="IBRAHIM"
ARG MODE
ARG NGINX_ROOT
# only ENV vars can be used in ENTRYPOINT, so we have to transfer it from ARG to ENV
ENV E_MODE $MODE
ENV E_NGINX_ROOT $NGINX_ROOT
ENV DEBIAN_FRONTEND=noninteractive
# use bash syntax for RUN commands instead of the default sh syntax
SHELL ["/bin/bash", "-c"]


# make the nginx root folder and copy needed server files for building
RUN mkdir -p ${NGINX_ROOT}/server
COPY ./server/getcomposer.sh ${NGINX_ROOT}/server/
COPY ./server/init_phpfpm.sh ${NGINX_ROOT}/server/init_phpfpm.sh


# allow execute on getcomposer script and run it
#RUN chmod +x ${NGINX_ROOT}/server/getcomposer.sh
#RUN ${NGINX_ROOT}/server/getcomposer.sh


# update and upgrade
#RUN apt-get -y update
#RUN apt-get -y upgrade

# get misc stuff
#RUN apt-get -y install wget
#RUN apt-get -y install zip
#RUN apt-get -y install unzip
#RUN apt-get -y install curl


# php 7.4 + extensions

# get gpg key
#RUN apt-get -y install software-properties-common <-- for Ubuntu
#RUN apt-get -y install lsb-release apt-transport-https ca-certificates 
#RUN wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg

# add repository
#RUN add-apt-repository ppa:ondrej/php <-- for Ubuntu
#RUN echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" | tee /etc/apt/sources.list.d/php.list
#RUN apt-get update

# install php stuff
#RUN apt-get -y install php7.4-dev
#RUN apt-get -y install php7.4-mysql
#RUN apt-get -y install php7.4-curl
#RUN apt-get -y install php7.4-json
#RUN apt-get -y install php7.4-common
#RUN apt-get -y install php7.4-mbstring
#RUN apt-get -y install php7.4-gmp
#RUN apt-get -y install php7.4-bcmath
#RUN apt-get -y install php7.4-xml
#RUN apt-get -y install php7.4-zip
#RUN apt-get -y install php7.4-gd


# Install system dependencies
RUN apt-get update && apt-get install -y \
    git \
    curl \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    zip \
    unzip

# Clear cache
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Install PHP extensions
RUN docker-php-ext-install pdo_mysql mbstring exif pcntl bcmath gd

# Get latest Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer


# npm, node
ENV NODE_VERSION=14.15.4
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash
ENV NVM_DIR=/root/.nvm
RUN . "$NVM_DIR/nvm.sh" && nvm install ${NODE_VERSION}
RUN . "$NVM_DIR/nvm.sh" && nvm use v${NODE_VERSION}
RUN . "$NVM_DIR/nvm.sh" && nvm alias default v${NODE_VERSION}
ENV PATH="/root/.nvm/versions/node/v${NODE_VERSION}/bin/:${PATH}"
RUN node --version
RUN npm --version


# navigate to project
WORKDIR ${NGINX_ROOT}


# resolve project dependencies
WORKDIR ${NGINX_ROOT}
RUN if [ "$E_MODE" == "prod" ]; then composer install --optimize-autoloader --no-dev; fi
RUN if [ "$E_MODE" == "stage" ]; then composer install; fi
RUN if [ "$E_MODE" == "dev" ]; then composer update; fi
RUN if [ "$E_MODE" != "demo" ]; then npm install; fi


# set permissions
# see: https://stackoverflow.com/q/30639174
RUN if [ "$E_MODE" != "demo" ]; then chown -R root:www-data ${NGINX_ROOT}; fi
RUN if [ "$E_MODE" != "demo" ]; then find ${NGINX_ROOT} -type f -exec chmod 664 {} \;; fi
RUN if [ "$E_MODE" != "demo" ]; then find ${NGINX_ROOT} -type d -exec chmod 775 {} \;; fi
RUN if [ "$E_MODE" != "demo" ]; then chgrp -R www-data storage bootstrap/cache; fi
RUN if [ "$E_MODE" != "demo" ]; then chmod -R ug+rwx storage bootstrap/cache; fi


# compile project
RUN if [ "$E_MODE" != "demo" ]; then npm rebuild; fi
RUN if [ "$E_MODE" != "demo" ]; then npm run dev; fi
RUN if [ "$E_MODE" != "demo" ]; then php artisan key:generate; fi


# allow execute on shell script and run it
RUN chmod +x ${NGINX_ROOT}/server/init_phpfpm.sh
# comment out for default entrypoint
ENTRYPOINT bash "${E_NGINX_ROOT}/server/init_phpfpm.sh"


EXPOSE 9000