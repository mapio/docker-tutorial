#!/bin/bash

if [[ -r python-websockets-chat ]]; then
	hg -R python-websockets-chat pull -u
else
	hg clone git+ssh://git@github.com:heroku-examples/python-websockets-chat.git
fi

docker build -t myapp .
