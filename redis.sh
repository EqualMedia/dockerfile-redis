#!/bin/bash

: ${REDIS_MAXMEMORY:=512mb}

sed -e "s/%redis_maxmemory%/${REDIS_MAXMEMORY}/" \
    -i /etc/redis.conf

if [[ $# -lt 1 ]] || [[ "$1" == "--"* ]]; then
  exec /usr/sbin/redis-server /etc/redis.conf
fi

# If number of args is >1, start given command instead
exec "$@"

