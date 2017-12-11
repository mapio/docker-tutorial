#!/bin/bash

rm_container_if_present() {
	if docker ps -a | grep -q $1; then
		echo "Killing previous instance of container $(docker rm -fv $1)..."
	fi
}

rm_network_if_present() {
	if docker network ls | grep -q $1; then
		echo "Removing previous instance of network $(docker network rm $1)..."
	fi
}

rm_container_if_present redis
rm_container_if_present chat
rm_network_if_present dt-net

mkdir -p logs
touch logs/logfile.txt

docker network create dt-net
docker run -d --name redis --network dt-net redis
sleep 1
docker run -d --name chat --network dt-net -p 80:8000 -v $(pwd)/logs:/app/logs -e REDIS_URL=redis://redis:6379 dt/chat

tail -f logs/logfile.txt
