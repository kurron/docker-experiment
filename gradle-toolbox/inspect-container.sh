#!/bin/bash

docker run --rm --tty --interactive --hostname="gradle" --name="gradle" --memory="256m" kurron/gradle:2.2.0 /bin/bash
