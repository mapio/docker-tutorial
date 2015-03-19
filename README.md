# A simple Docker tutorial

This repo contains a couple of `Dockerfile`s and a few scripts used for a
[Docker](https://www.docker.com/) tutorial based on the
[Python WebSockets Chat](https://github.com/heroku-examples/python-websockets-chat) example
application by Kenneth Reitz.

The chat application is based on [gunicorn](http://gunicorn.org/) and
[redis](http://redis.io/), this repo contains (among other files):

* a [Dockerfile](gunicorn/Dockerfile) to build a suitable `gunicorn` image, and
* a [Dockerfile](chat/Dockerfile) (that derives from the `gunicorn` image) that
  encapsulates the application in the `chat` image;
* a [run.sh](chat/run.sh) script show how to run the official `redis`
  [image](https://registry.hub.docker.com/_/redis/), and how to run the `chat` image
  [linking](https://docs.docker.com/userguide/dockerlinks/) it to
  the redis server and persisting the application logs in a locally attached
  [volume](https://docs.docker.com/userguide/dockervolumes/).


