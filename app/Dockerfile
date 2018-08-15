FROM nextcloud:fpm-alpine
COPY redis.config.php /var/www/html/config/
COPY zz-memory-limit.conf /usr/local/etc/php/conf.d/
COPY zz-worker-limit.conf /usr/local/etc/php-fpm.d/
RUN echo '*/10 * * * * /var/www/html/occ preview:pre-generate' >> /var/spool/cron/crontabs/www-data
