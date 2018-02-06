#!/bin/bash

echo "server { \
        listen 80 default_server; \
        listen [::]:80 default_server; \
        root $DOCUMENTROOT; \
        server_name $SERVER_NAME; \
        }" > /etc/nginx/sites-available/default

cp -r /tmp/html/* $DOCUMENTROOT
chown -R www-data:www-data $DOCUMENTROOT

/usr/sbin/nginx -g "daemon off;"
