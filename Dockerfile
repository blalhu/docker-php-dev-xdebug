FROM pelso/php-dev:7.4

RUN apt-get update \
 && apt-get install -y \
    php7.4-xdebug

COPY xdebug.ini /etc/php/7.4/mods-available/xdebug.ini

CMD service php7.4-fpm start \
 && service php7.4-fpm restart \
 && sleep infinity
