#!/bin/bash

rm -rf python-websockets-chat ./app

git clone https://github.com/heroku-examples/python-websockets-chat.git
(cd python-websockets-chat && git checkout 67adb39 --)

mkdir ./app
cp -r python-websockets-chat/{static,templates,chat.py,requirements.txt} ./app

docker build -t dt/chat .

rm -rf ./app
