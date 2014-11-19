#!/bin/bash

docker run --rm --tty --interactive --hostname="java-8" --name="java-8" --memory="256m" kurron/java:1.8.0.25 /bin/bash
