#!/bin/sh

mkdir -p /var/www/storage/framework/{sessions,views,cache}
mkdir -p /var/www/bootstrap/cache

chmod -R 777 /var/www/storage /var/www/bootstrap/cache
chown -R www-data:www-data /var/www/storage /var/www/bootstrap/cache

exec php-fpm