#!/bin/bash

docker run -it --rm --name dt-balancer busybox \
    sh -c '(while true; do ping -c 2 dt-frontend; ping -c 2 dt-backend; done) 2>&1 | sed "s/\(.*\)/BALANCER: \1/"'
