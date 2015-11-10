# How to use docker-machine with "Virtualbox"

Download and install [Virtualbox](https://www.virtualbox.org/).

Launch a `dt-aws` docker machine using

        docker-machine create --driver virtualbox dt-vb

Test your setup using

        eval $(docker-machine env dt-vb)
        docker run hello-world

Run the tutorial code

        ( cd gunicorn && ./build.sh )
        ( cd chat && ./build.sh )
        ( cd chat && docker-compose up )
        open http://$(docker-machine ip dt-do)

To cleanup run

        docker-machine rm dt-vb
