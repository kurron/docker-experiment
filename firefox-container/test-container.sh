#!/bin/bash

docker run --volume /tmp/.X11-unix:/tmp/.X11-unix --rm --env DISPLAY=$DISPLAY kurron/firfox "$@" 

