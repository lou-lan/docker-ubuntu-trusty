FROM index.tenxcloud.com/tenxcloud/ubuntu:trusty
MAINTAINER Zhai Huailou <loualn@loulan.me>

ENV LANGUAGE zh_CN.UTF-8
ENV LANG zh_CN.UTF-8
ENV LC_ALL=zh_CN.UTF-8

COPY sources.list /etc/apt/sources.list

# Install.
VOLUME /data
RUN apt-get update && \
    apt-get -y upgrade
