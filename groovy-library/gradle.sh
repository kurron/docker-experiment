#!/bin/bash

docker run --volume $(pwd):/src --workdir=/src --user=$(id -u $(whoami)):$(id -g $(whoami)) --rm --attach stdout --attach stderr --interactive kurron/groovy-library:1.0.0 "$@" 

