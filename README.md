# Dockerfile for Redis server build

Built images are hosted at https://registry.hub.docker.com/u/state/redis/

## Configuration

Configuration is done using environment variables.

- REDIS_MAXMEMORY - Redis `maxmemory`. Default: 512mb.

## Running

```bash
$ docker run --name redis -e REDIS_MAXMEMORY=1gb state/redis
```
