#!/bin/bash -x

docker network connect dt-front-net dt-frontend
docker network connect dt-front-net dt-balancer
