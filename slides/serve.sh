#!/bin/bash

# see http://veithen.github.io/2014/11/16/sigterm-propagation.html

trap 'kill -TERM $PID' TERM INT

port="${1:-8000}"
python3 -m http.server "$port" & PID=$!
python3 -m webbrowser -t "http://127.0.0.1:$port/"

wait $PID
trap - TERM INT
wait $PID

exit $?
