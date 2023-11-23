FROM php:8.2-cli

WORKDIR /var/www

RUN apt-get update && \
	apt-get install libzip-dev -y && \
	docker-php-ext-install zip

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"  && \
	php composer-setup.php && \
	php -r "unlink('composer-setup.php');"

RUN php composer.phar create-project --prefer-dist laravel/laravel laravel

ENTRYPOINT ["php", "laravel/artisan","serve"]
CMD ["--host=0.0.0.0"]

#docker run --rm -d --name php1 -p 8001:8001 php --host=0.0.0.0 --port=8001