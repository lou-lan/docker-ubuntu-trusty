FROM index.tenxcloud.com/tenxcloud/ubuntu:trusty
COPY sources.list /etc/apt/sources.list
VOLUME /data
RUN apt-get update
