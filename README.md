# A simple Docker tutorial

This repo contains a couple of `Dockerfile`s and a few scripts used for a
[Docker](https://www.docker.com/) tutorial based on the
[Python WebSockets Chat](https://github.com/heroku-examples/python-websockets-chat) example
application by [Kenneth Reitz](http://www.kennethreitz.org/).

The chat application is based on [gunicorn](http://gunicorn.org/) and
[redis](http://redis.io/), this repo contains (among other files):

* a [Dockerfile](gunicorn/Dockerfile) to build a suitable `dt/gunicorn` image, and
* a [Dockerfile](chat/Dockerfile) (that derives from the `dt/gunicorn` image) that
  encapsulates the application in the `dt/chat` image;
* a [run.sh](chat/run.sh) script show how to run the official `redis`
  [image](https://registry.hub.docker.com/_/redis/), and how to run the `dt/chat` image
  [linking](https://docs.docker.com/userguide/dockerlinks/) it to
  the redis server and persisting the application logs in a locally attached
  [volume](https://docs.docker.com/userguide/dockervolumes/).
* a [docker-compose.yml](chat/docker-compose.yml) configuration file to run the application using [docker-compose](https://docs.docker.com/compose/) (instead of the abovementioned scripts),
* some [instructions](machine/) on how to use [docker-machine](https://docs.docker.com/machine/) to setup a Docker instance on [Digital Ocean](https://www.digitalocean.com/), or [Amazon Web Services](https://aws.amazon.com/).

