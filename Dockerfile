FROM index.tenxcloud.com/tenxcloud/ubuntu:trusty
MAINTAINER Zhai Huailou <loualn@loulan.me>

#换阿里源
COPY sources.list /etc/apt/sources.list

# 更新
VOLUME /data
RUN apt-get update && \
    apt-get -y upgrade
