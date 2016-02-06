# docker-coffeescript

Compile coffeescript using docker

## Usage

    docker run -v $PWD:$PWD -w $PWD hut6/docker-coffeescript coffee/main.coffee js/main.js

## Versions
 - 1.6.2
 - 1.6.3
 - 1.7.0
 - 1.7.1
 - 1.8.0
 - 1.9.0
 - 1.9.1
 - 1.9.2
 - 1.9.3
 - 1.10.0

## Testing

Testing a new version.

    docker build -t hut6/docker-coffeescript:testing .
    docker run hut6/docker-coffeescript:testing --version

    git push origin version