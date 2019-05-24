## Ubuntu dockerfile
This repository contains **Dockerfile** of Ubuntu for Docker's [automated build](https://hub.docker.com/r/xaamin/ubuntu) published to [Docker Hub](https://hub.docker.com)

### Usage

MAX_JOB_SIZE=50MB
```
	docker run --rm -it -p 11300:11300 -e MAX_JOB_SIZE=52428800 xaamin/beanstalkd
```