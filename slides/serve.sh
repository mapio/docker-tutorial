#!/bin/bash

# see http://veithen.github.io/2014/11/16/sigterm-propagation.html

trap 'kill -TERM $PID' TERM INT

port="${1:-8000}"
# Set the default Content-Type to `text/plain` instead of `application/octet-stream`
# And serve everything as UTF-8 (although not technically correct, this doesn’t break anything for binary files)
python -c $'import SimpleHTTPServer;\nmap = SimpleHTTPServer.SimpleHTTPRequestHandler.extensions_map;\nmap[""] = "text/plain";\nfor key, value in map.items():\n\tmap[key] = value + ";charset=UTF-8";\nSimpleHTTPServer.test();' "$port" & PID=$!
python -m webbrowser -t "http://127.0.0.1:$port/"

wait $PID
trap - TERM INT
wait $PID

exit $?
