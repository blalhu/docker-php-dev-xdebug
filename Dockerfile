ARG DOCKER_TAG

FROM pelso/php-dev:${DOCKER_TAG}

ARG DOCKER_TAG
ARG PHP_VERSION

USER root

RUN apt-get update \
 && apt-get install -y \
    php${PHP_VERSION}-xdebug

COPY xdebug3.ini /etc/php/${PHP_VERSION}/mods-available/xdebug.ini

USER app

CMD sudo /usr/sbin/service php${PHP_VERSION}-fpm start \
 && sleep infinity
