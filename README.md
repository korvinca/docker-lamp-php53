# docker-lamp-php53
docker-compose: apache2, php5.3, mysql, phpmyadmin, nginx-proxy, mysql-backup, www-backup

# Overview

Apache2 web server docker image with php5, based on ubuntu:12.04

This image is based on ubuntu:12.04.

Apache, PHP5, MySQL, phpMyAdmin is installed.

Avaliable php5 modules are php5-gd, php5-mysql, php5-curl, php5-json, php5-mcrypt.

Apache listen on port 80.
Web application is placed in /var/www/virtual_name/.

# Usage docker-compose images
git clone https://github.com/korvinca/docker-lamp-php53.git

cd docker-lamp-php53/

docker-compose build

docker-compose up -d

# For test apache (make changes in default): 

cd docker-lamp-php53/apache

docker build --no-cache -t apache .

docker run -d -p 80:80 -v ~/docker-lamp-php53/apache/www/:/var/www apache-test

# Usede web sites

http://site1.com

http://site2.com

http://IP_ADDRESS:89 - phpMyAdmin

# Setup access to MySQL

docker network ls

docker network inspect dockerlampphp53_default

for access to mysql container use Host_name dockerlampphp53_mysql_1

