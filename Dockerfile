FROM index.tenxcloud.com/tenxcloud/ubuntu:trusty
MAINTAINER Zhai Huailou <loualn@loulan.me>

# 使用root用户
USER root

# 使用Ubuntu官方的apt-get源
COPY sources.list /etc/apt/sources.list

#配置中文语言
ENV LANGUAGE zh_CN.UTF-8
ENV LANG zh_CN.UTF-8
ENV LC_ALL=zh_CN.UTF-8
  
# 设置时区
ENV TZ "PRC"

# 更新
VOLUME /data
RUN apt-get update && \
    apt-get -y upgrade
