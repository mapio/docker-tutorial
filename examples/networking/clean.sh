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

rm_container_if_present dt-backend
rm_container_if_present dt-frontend
rm_container_if_present dt-balancer
rm_container_if_present dt-balancer
rm_network_if_present dt-front-net
rm_network_if_present dt-back-net

if tmux has-session -t network_example 2>/dev/null; then
    tmux kill-session -t network_example
fi
