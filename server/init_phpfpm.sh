#!/bin/bash


# navigate
cd "$E_NGINX_ROOT"


# demo
if [ "$E_MODE" == "demo" ]; then
    composer global require laravel/installer
    laravel new . --jet --stack=inertia --teams --force
    composer require laravel/cashier # uses Stripe for Online Payments
    composer install
    npm install
    cp "$E_NGINX_ROOT/server/.env" "./.env"
    chown -R root:www-data "$E_NGINX_ROOT"
    find "$E_NGINX_ROOT" -type f -exec chmod 664 {} \;
    find "$E_NGINX_ROOT" -type d -exec chmod 775 {} \;
    npm rebuild
    npm run dev
    php artisan key:generate
fi


# dev
if [ "$E_MODE" == "dev" ]; then
    composer install
    npm install
    cp "$E_NGINX_ROOT/server_dev/.env" "./.env"
    chown -R root:www-data "$E_NGINX_ROOT"
    find "$E_NGINX_ROOT" -type f -exec chmod 664 {} \;
    find "$E_NGINX_ROOT" -type d -exec chmod 775 {} \;
    npm rebuild
    php artisan key:generate
    npm run watch
fi


# refresh entire database then seed it
if [ "$E_MODE" == "stage" ] || [ "$E_MODE" == "dev" ] || [ "$E_MODE" == "demo" ]; then
    php artisan migrate:fresh --seed
fi


# make sure cache permissions are correct
chgrp -R www-data storage bootstrap/cache
chmod -R ug+rwx storage bootstrap/cache


# clear old cached data
php artisan cache:clear
php artisan config:clear


# notify complete
G='\033[0;32m' # Green
N='\033[0m' # No Color
echo -e $G"Laravel Setup Complete."$N


# run php-fpm as root in foreground
php-fpm -F -R