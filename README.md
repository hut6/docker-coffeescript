# docker-coffeescript
Compile coffeescript using docker

# Usage

    docker run -v $PWD:$PWD -w $PWD hut6/docker-coffeescript coffee coffee/main.coffee js/main.js
