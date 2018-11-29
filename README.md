# A simple Docker tutorial

This repo contains the support material for a short class about docker for
developers.

This tutorial is based on [Docker](https://www.docker.com/) version 17.09.0-ce (build afdb6d4) and [Docker Compose](https://docs.docker.com/compose/) version
1.16.1, (build 6d1ac21).

You can get a [recent versions of Docker](https://www.docker.com/get-docker)
that runs natively on GNU/Linux, OS X and Windows; alternatively, you can use
[Docker Machine](https://docs.docker.com/machine/) to run Docker via
[VirtualBox](https://www.virtualbox.org/), or on various cloud providers.

## Slides

The [slides](slides/) directory contains the slides of the lecture (also   [browsable](http://docker-tutorial.mapio.it/) online).

## Examples

The lecture presents a few use cases, the (very undocumented and tentative) code
of such examples is described as follow.

### Compilation (and execution) of code in different languages

The [compilation](examples/compilation/) directory shows how to leverage Docker
to compile, and execute, a simple "Hello, world!" applicaiton in several
langauges.

### A simple networking example

The [networking](examples/networking) directory contains an example of usage of
two networks to simulate a more complex network topology.

### Orchestration of a web application

The [orchestration](examples/orchestration) directory contains a stripped
down version of the [getting-started](https://docs.docker.com/get-started/) example.
