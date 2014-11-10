FROM fedora:20

RUN yum update -y -q; yum clean all
RUN yum install -y -q redis; yum clean all

ADD redis.conf /etc/redis.conf
ADD redis.sh /usr/local/bin/redis.sh

EXPOSE 6379
VOLUME /var/lib/redis

ENTRYPOINT ["/usr/local/bin/redis.sh"]
