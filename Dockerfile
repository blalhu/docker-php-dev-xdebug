FROM pelso/php-dev:8.1

RUN apt-get update \
 && apt-get install -y \
    php8.1-xdebug

COPY xdebug.ini /etc/php/8.1/mods-available/xdebug.ini

CMD service php8.1-fpm start \
 && service php8.1-fpm restart \
 && sleep infinity
