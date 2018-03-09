FROM php:7.2-fpm

COPY . /identihub

WORKDIR /identihub

COPY ./docker/entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
