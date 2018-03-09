#!/bin/sh

usermod -u `stat -c "%u" /identihub/` www-data

chown www-data:www-data /identihub

cd /identihub
su - www-data -c "composer install && php artisan migrate"

php-fpm
