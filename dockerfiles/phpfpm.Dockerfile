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
# EDIT: Actually copy everything. Why? Install everything once here so starting the container is quick
#COPY . ${NGINX_ROOT}/


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
#WORKDIR ${NGINX_ROOT}


# resolve project dependencies
#WORKDIR ${NGINX_ROOT}
#RUN if [ "$E_MODE" == "prod" ]; then composer install --optimize-autoloader --no-dev; fi
#RUN if [ "$E_MODE" == "stage" ]; then composer install --optimize-autoloader; fi
#RUN if [ "$E_MODE" == "dev" ]; then composer install; fi
#RUN if [ "$E_MODE" != "demo" ]; then npm install; fi


# set permissions
# see: https://stackoverflow.com/q/30639174
#RUN if [ "$E_MODE" != "demo" ]; then chown -R root:www-data ${NGINX_ROOT}; fi
#RUN if [ "$E_MODE" != "demo" ]; then find ${NGINX_ROOT} -type f -exec chmod 664 {} \;; fi
#RUN if [ "$E_MODE" != "demo" ]; then find ${NGINX_ROOT} -type d -exec chmod 775 {} \;; fi
#RUN if [ "$E_MODE" != "demo" ]; then chgrp -R www-data storage bootstrap/cache; fi
#RUN if [ "$E_MODE" != "demo" ]; then chmod -R ug+rwx storage bootstrap/cache; fi


# compile project
#RUN if [ "$E_MODE" != "demo" ]; then npm rebuild; fi
#RUN if [ "$E_MODE" != "demo" ]; then npm run dev; fi
#RUN if [ "$E_MODE" != "demo" ]; then php artisan key:generate; fi


# allow execute on shell script and run it
RUN chmod +x ${NGINX_ROOT}/server/init_phpfpm.sh
# comment out for default entrypoint
ENTRYPOINT bash "${E_NGINX_ROOT}/server/init_phpfpm.sh"


EXPOSE 9000