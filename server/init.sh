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

# run nginx in the foreground so docker doesn't shut off
#nginx -g 'daemon off;'

# reload nginx every 6 hours, otherwise run nginx in the foreground normally
/bin/sh -c 'while :; do sleep 6h & wait $${!}; nginx -s reload; done & nginx -g "daemon off;"'