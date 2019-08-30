FROM pelso/php-dev:7.3

RUN apt-get update \
 && apt-get install -y \
    php7.3-xdebug

COPY xdebug.ini /etc/php/7.3/mods-available/xdebug.ini

CMD service php7.3-fpm start \
 && service php7.3-fpm restart \
 && sleep infinity
