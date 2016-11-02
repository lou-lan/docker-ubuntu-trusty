FROM index.tenxcloud.com/tenxcloud/ubuntu:trusty
MAINTAINER Zhai Huailou <loualn@loulan.me>

ENV TZ "Asia/Shanghai"

COPY sources.list /etc/apt/sources.list

# Install.
VOLUME /data
RUN apt-get update && \
    apt-get -y upgrade
