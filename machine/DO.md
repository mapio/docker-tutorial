# How to use docker-machine with "Digital Ocean"

Create a `do.env` text file containing the following variables

        export DIGITALOCEAN_ACCESS_TOKEN="..."

Create a token on DO

* sign in at [https://www.digitalocean.com/](https://www.digitalocean.com/)
* generate a read/write token [https://cloud.digitalocean.com/settings/tokens/new](https://cloud.digitalocean.com/settings/tokens/new)
* copy the token in the `do.env` file

Launch a `dt-aws` docker machine using

        source do.env
        docker-machine create --driver digitalocean dt-do

Test your setup using

        eval $(docker-machine env dt-do)
        docker run hello-world

Run the tutorial code

        ( cd gunicorn && ./build.sh )
        ( cd chat && ./build.sh )
        ( cd chat && docker-compose up )
        open http://$(docker-machine ip dt-do)

To cleanup run

        docker-machine rm dt-do
