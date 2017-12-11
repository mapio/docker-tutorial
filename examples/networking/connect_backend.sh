#!/bin/bash -x

docker network connect dt-back-net dt-balancer
docker network connect dt-back-net dt-backend
