FROM nginx:latest
MAINTAINER korvinca@gmail.com

RUN echo "America/Los_Angeles" > /etc/timezone && \
    dpkg-reconfigure -f noninteractive tzdata 

RUN apt-get update && \
    apt-get install -y logrotate && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN rm -v /etc/nginx/nginx.conf
ADD nginx.conf /etc/nginx/

COPY /run.sh /usr/local/bin/run.sh
RUN chmod +x /usr/local/bin/run.sh

EXPOSE 80

CMD ["/usr/local/bin/run.sh"]
CMD service nginx start