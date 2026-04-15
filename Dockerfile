FROM inovector/mixpost:latest

WORKDIR /var/www/html

EXPOSE 80

CMD php artisan serve --host=0.0.0.0 --port=$PORT
