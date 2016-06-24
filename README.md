baymax
======================

## Purpose
A 6.99MB Docker image running
- [Alpine Linux](https://github.com/gliderlabs/docker-alpine)
- [Nginx](http://nginx.org/)
- Some Disney flair (Baymax image)

Intended use is to demo docker orchestration
- Docker
- Mesos
- Marathon
- Kubernetes

## Usage
### From your machine
```
docker run -d -p "8080:80" dontrebootme/baymax:v1
```

## Build
```
➜ ./build
```
