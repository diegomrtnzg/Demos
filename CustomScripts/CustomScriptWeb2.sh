# Custom Script for Linux
#!/bin/bash

# update package source
apt-get -y update

# install NGINX
apt-get -y install nginx

echo "Hello World from host" $HOSTNAME " from Web Server 2!" | sudo tee -a /var/www/html/index.html