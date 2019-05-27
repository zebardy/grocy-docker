#/bin/sh

if [ ! -d /config/data ]; then
  cp -r /master/data /config/data
fi
ln -s /config/data /www/data
chown www-data:www-data -R /www/

docker-php-entrypoint php-fpm &
/usr/sbin/nginx -g "daemon off"
