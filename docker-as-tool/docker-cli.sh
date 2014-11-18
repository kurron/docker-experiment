#!/bin/bash

# run this script giving it a single argument eg. ./docker-cli.sh ronbo-was-here
# that will attempt to create an empty file name ronbo-was-here in the current directory

docker run --volume $(pwd):/src --workdir=/src --user=vagrant --rm --attach stdout --attach stderr --interactive toolbox "$@" 
