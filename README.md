Sensu Example using Docker Compose
----------------------------------

This is an implementation of the default sensu check-memory test in docker.

This creates images for the following services:

 * redis
 * rabbitmq
 * sensu-api
 * sensu-server
 * sensu-client (one with a subscription check, and one with a standalone check)
 * uchiwa

The uchiwa service is exposed on port 3000.

### Running

docker-compose can be used to run all of the parts easily:

    git clone https://github.com/matthewfranglen/sensu-example
    cd sensu-example
    bin/build.sh
    docker-compose build
    docker-compose up

You can view the uchiwa dashboard at http://localhost:3000

### Details

The sensu images extend a base image which `bin/build.sh` builds.
There is an old version of this image on the hub.

You can rebuild your images to pull in changes with `docker-compose build --no-cache`

You can update your images with `bin/pull.sh` which will refresh the hub images.
