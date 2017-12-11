#!/bin/bash

docker run -it --rm --name dt-frontend busybox \
    sh -c '(while true; do ping -c 2 dt-balancer; done) 2>&1 | sed "s/\(.*\)/FRONTEND: \1/"'
