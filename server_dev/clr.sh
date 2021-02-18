#!/bin/bash

php artisan cache:clear
php artisan route:cache
php artisan config:clear
php artisan view:clear
