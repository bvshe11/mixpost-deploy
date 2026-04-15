FROM inovector/mixpost:latest

WORKDIR /var/www/html

EXPOSE 80

# CMD php artisan serve --host=0.0.0.0 --port=$PORT
# CMD php -d display_errors=1 artisan serve --host=0.0.0.0 --port=$PORT
CMD php artisan config:clear \
 && php artisan cache:clear \
 && php artisan config:cache \
 && php artisan serve --host=0.0.0.0 --port=$PORT
