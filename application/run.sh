#!/bin/bash

rmifpresent() {
	if docker ps -a | grep -q $1; then
		docker rm -fv $1
	fi
}

rmifpresent redis
rmifpresent myapp

docker run -d --name redis redis
docker run -d --name myapp -p 8000:8000 -v $(pwd)/logs:/app/logs --link redis:redis -e REDISCLOUD_URL=redis://redis:6379 myapp

tail -f logs/logfile.txt
