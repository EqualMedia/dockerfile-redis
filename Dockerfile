FROM fedora:20
MAINTAINER Vaidas Jablonskis <jablonskis@gmail.com>

RUN yum update -y -q; yum clean all
RUN yum install -y -q redis; yum clean all

ADD ./redis.conf /etc/redis.conf

USER redis
EXPOSE 6379
VOLUME /var/lib/redis

CMD /usr/sbin/redis-server /etc/redis.conf
