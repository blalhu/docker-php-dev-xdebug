FROM pelso/php-dev:8.0

RUN apt-get update \
 && apt-get install -y \
    php8.0-xdebug

COPY xdebug.ini /etc/php/8.0/mods-available/xdebug.ini

CMD service php8.0-fpm start \
 && service php8.0-fpm restart \
 && sleep infinity
