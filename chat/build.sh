#!/bin/bash

if [[ -r python-websockets-chat ]]; then
	hg -R python-websockets-chat pull -u
else
	hg clone git+ssh://git@github.com:heroku-examples/python-websockets-chat.git
fi

rm -rf ./app
mkdir ./app
cp -r python-websockets-chat/{static,templates,chat.py} ./app
cp requirements.txt ./app

docker build -t dt/chat .

rm -rf ./app
