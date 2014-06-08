#!/bin/bash

docker run --tty --interactive --hostname="java-7" --name="java-7" --memory="256m" kurron/java:1.7.0.60 /bin/bash
