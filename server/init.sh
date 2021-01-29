#!/bin/bash

cd /var/www/html/laravel-project

# UNCOMMENT FOR INITIAL DEPLOYMENT ONLY:
#php artisan migrate:fresh --seed

chgrp -R www-data storage bootstrap/cache
chmod -R ug+rwx storage bootstrap/cache

# UNCOMMENT FOR PRODUCTION:
#composer install --optimize-autoloader --no-dev

php artisan cache:clear
php artisan config:clear

apachectl -D FOREGROUND