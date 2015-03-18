#!/bin/bash

docker rm -fv redis
docker rm -fv myapp

docker run -d --name redis redis
docker run -p 8000:8000  --link redis:redis -e REDISCLOUD_URL=redis://redis:6379  myapp
