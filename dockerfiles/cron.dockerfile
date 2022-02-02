FROM php:8-fpm-alpine

RUN docker-php-ext-install pdo pdo_mysql

RUN echo "* * * * * cd /var/www/html && php artisan schedule:run >> /dev/null 2>&1"  >> /etc/crontabs/root

CMD ["crond", "-f"]
