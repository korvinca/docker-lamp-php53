FROM ubuntu:12.04
MAINTAINER korvinca@gmail.com

VOLUME ["/var/www"]

RUN echo "America/Los_Angeles" > /etc/timezone && \
    dpkg-reconfigure -f noninteractive tzdata

ENV DEBIAN_FRONTEND noninteractive
ENV DEBIAN_FRONTEND teletype

RUN apt-get update && \
    apt-get install -y sendmail \
    nano \
    apache2 \
    logrotate && a2enmod rewrite

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2

COPY /run.sh /usr/local/bin/run.sh
RUN chmod +x /usr/local/bin/run.sh
#COPY /conf/default /etc/apache2/sites-available/default

RUN apt-get install -y php5 \
    libapache2-mod-php5 \
    php5-mysql \
    php5-curl \
    php5-json \
    php5-cli \
    php5-mcrypt \
    php5-gd && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

EXPOSE 80

CMD ["/usr/local/bin/run.sh"]
#CMD ["/usr/sbin/apache2", "-D", "FOREGROUND"]
