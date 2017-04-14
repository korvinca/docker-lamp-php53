FROM nginx:latest
MAINTAINER korvinca@gmail.com

RUN echo "America/Los_Angeles" > /etc/timezone && \
    dpkg-reconfigure -f noninteractive tzdata 

RUN rm -v /etc/nginx/nginx.conf
ADD nginx.conf /etc/nginx/

EXPOSE 80

CMD service nginx start