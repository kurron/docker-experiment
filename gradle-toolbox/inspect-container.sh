#!/bin/bash

docker run --rm --tty --interactive --hostname="gradle" --name="gradle" --memory="256m" --entrypoint="/bin/bash" kurron/gradle:2.2.0
