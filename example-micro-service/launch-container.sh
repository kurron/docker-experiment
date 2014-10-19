#!/bin/bash

docker run --tty --interactive --hostname="groovy" --name="groovy" --memory="256m" kurron/groovy:1.8.0.05 /bin/bash
