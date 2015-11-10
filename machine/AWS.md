# How to use docker-machine with "Amazon Web Services"

Create an `aws.env` text file containing the following variables

        export AWS_ACCESS_KEY_ID="..."
        export AWS_SECRET_ACCESS_KEY="..."
        export AWS_VPC_ID="..."
        export AWS_DEFAULT_REGION="..."
        export AWS_ZONE="..."

Create an user and a vpc on AWS:

* sign in at [https://aws.amazon.com/](https://aws.amazon.com/)
* create a `dt-user` and authorize it for EC2
	* create the user [https://console.aws.amazon.com/iam/](https://console.aws.amazon.com/iam/)
	* copy the "Access Key ID" and "Secret Access Key" in the `aws.env` file
	* attach "AmazonEC2FullAccess" policy to `dt-user` [https://console.aws.amazon.com/iam/home#users/dt-user](https://console.aws.amazon.com/iam/home#users/dt-user)
* create a `dt-vpc`
	* create the vpc [https://console.aws.amazon.com/vpc/](https://console.aws.amazon.com/vpc/)
	* copy the "VCP ID" and "Availability Zone" (split in region and zone) in the `aws.env` file

Launch a `dt-aws` docker machine using

        source aws.env
        docker-machine create --driver amazonec2 dt-aws

Test your setup using

        eval $(docker-machine env dt-aws)
        docker run hello-world

Allow inbound HTTP connections

* look for the `docker-machine` security group
[https://console.aws.amazon.com/ec2/v2/home?#SecurityGroups](https://console.aws.amazon.com/ec2/v2/home?#SecurityGroups)
* add the "HTTP" rule to the "InBound" rules

Run the tutorial code

        ( cd gunicorn && ./build.sh )
        ( cd chat && ./build.sh )
        ( cd chat && docker-compose up )
        open http://$(docker-machine ip dt-aws)

To cleanup run

        docker-machine rm dt-aws

and remove the `dt-vpc` from [https://console.aws.amazon.com/vpc/](https://console.aws.amazon.com/vpc/).

