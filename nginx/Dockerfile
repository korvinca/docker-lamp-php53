FROM ubuntu
MAINTAINER korvinca@gmail.com

RUN echo "America/Los_Angeles" > /etc/timezone && \
    dpkg-reconfigure -f noninteractive tzdata

RUN apt-get update && apt-get install -y \
    nano \
    curl \
    wget \
    dialog \
    net-tools \
    nginx && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* 

#RUN rm -v /etc/nginx/nginx.conf
#ADD nginx.conf /etc/nginx/
#RUN echo "daemon off;" >> /etc/nginx/nginx.conf

EXPOSE 80

CMD service nginx start
