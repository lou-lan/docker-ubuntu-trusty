FROM index.tenxcloud.com/tenxcloud/ubuntu:trusty
MAINTAINER Zhai Huailou <loualn@loulan.me>

#配置中文语言
ENV TZ "Asia/Shanghai"
ENV LANGUAGE zh_CN.UTF-8
ENV LANG zh_CN.UTF-8
ENV LC_ALL=zh_CN.UTF-8
RUN /usr/share/locales/install-language-pack zh_CN \
  && locale-gen zh_CN.UTF-8 \
  && dpkg-reconfigure --frontend noninteractive locales \
  && apt-get -qqy --no-install-recommends install language-pack-zh-hans

COPY sources.list /etc/apt/sources.list

# Install.
VOLUME /data
RUN apt-get update && \
    apt-get -y upgrade
