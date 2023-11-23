#https://getcomposer.org/download/#:~:text=To%20quickly%20install%20Composer%20in%20the%20current%20directory%2C,on%20installing%20Composer%20programmatically.%20php%20-r%20%22copy%28%27https%3A%2F%2Fgetcomposer.org%2Finstaller%27%2C%20%27composer-setup.php%27%29%3B%22
FROM php:8.2-cli

WORKDIR /var/www

RUN apt-get update && \
	apt-get install libzip-dev -y && \
	docker-php-ext-install zip

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"  && \
	php composer-setup.php && \
	php -r "unlink('composer-setup.php');"

RUN php composer.phar create-project --prefer-dist laravel/laravel laravel
