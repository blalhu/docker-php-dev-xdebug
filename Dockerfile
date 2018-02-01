FROM pelso/php-dev:5.6

RUN apt update \
 && apt install -y \
    php5.6-xdebug

COPY xdebug.ini /etc/php/5.6/mods-available/xdebug.ini

CMD service php5.6-fpm start \
 && service php5.6-fpm restart \
 && sleep infinity