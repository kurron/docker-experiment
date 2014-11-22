#!/bin/bash

docker run --rm --tty --interactive --hostname="gradle" --name="gradle" --memory="256m" kurron/groovy-library:1.0.0 /bin/bash
