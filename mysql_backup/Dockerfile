FROM ubuntu:14.04
MAINTAINER korvinca@gmail.com

VOLUME ["~/backup"]

RUN echo "America/Los_Angeles" > /etc/timezone && \
    dpkg-reconfigure -f noninteractive tzdata

RUN apt-get update && \
  apt-get install -y mysql-client && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/*

COPY /backup.sh /usr/local/bin/backup.sh

RUN chmod +x /usr/local/bin/backup.sh

CMD ["/usr/local/bin/backup.sh"]
