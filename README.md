# A simple Docker tutorial

This repo contains the support material for a short class about docker for
developers.

This tutorial is based on [Docker](https://www.docker.com/) version 1.12.3
(build 6b644ec) and [Docker Compose](https://docs.docker.com/compose/) version
1.9.0-rc4 (build 181a4e9). Basi [instructions](machine/) are provided on how to
use [Docker Machine](https://docs.docker.com/machine/) to setup a Docker
instance on [VirtualBox](https://www.virtualbox.org/),  [Digital
Ocean](https://www.digitalocean.com/), and [Amazon Web
Services](https://aws.amazon.com/).


## Slides

The [slides](slides/) directory contains the slides of the lecture (also   [browsable](http://broad-foot.surge.sh/) online).

## How to compile (and execute) sources in different languages

The [compile](compile/) directory shows how to leverage
[Docker](https://www.docker.com/) to compile, and execute, a simple "Hello,
world!" applicaiton in several langauges.


## An example web application

The [webapp](webapp/) directory contains a couple of `Dockerfile`s and a few scripts used
for a [Docker](https://www.docker.com/) tutorial based on the [Python WebSockets
Chat](https://github.com/heroku-examples/python-websockets-chat) example
application by [Kenneth Reitz](http://www.kennethreitz.org/).

The chat application is based on [gunicorn](http://gunicorn.org/) and
[redis](http://redis.io/), this repo contains (among other files):

* a [Dockerfile](webapp/gunicorn/Dockerfile) to build a suitable `dt/gunicorn` image, and
* a [Dockerfile](webapp/chat/Dockerfile) (that derives from the `dt/gunicorn` image) that
  encapsulates the application in the `dt/chat` image;
* a [run.sh](webapp/chat/run.sh) script show how to run the official `redis`
  [image](https://registry.hub.docker.com/_/redis/), and how to run the `dt/chat` image using
  the new [networking](https://docs.docker.com/engine/userguide/networking/) features to make
  it talk to the the redis server, persisting the application logs in a locally attached
  [volume](https://docs.docker.com/engine/tutorials/dockervolumes/).
* a [docker-compose.yml](webapp/docker-compose.yml) configuration file to run the application using [Docker Compose](https://docs.docker.com/compose/) (instead of the abovementioned scripts),
