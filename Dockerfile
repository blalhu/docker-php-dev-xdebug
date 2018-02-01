FROM pelso/php-dev:7.0

RUN apt update \
 && apt install -y \
    php7.0-xdebug

COPY xdebug.ini /etc/php/7.0/mods-available/xdebug.ini

CMD service php7.0-fpm start \
 && service php7.0-fpm restart \
 && sleep infinity