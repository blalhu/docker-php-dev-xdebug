FROM pelso/php-dev:7.1

RUN apt update \
 && apt install -y \
    php7.1-xdebug

COPY xdebug.ini /etc/php/7.1/mods-available/xdebug.ini

CMD service php7.1-fpm start \
 && service php7.1-fpm restart \
 && sleep infinity