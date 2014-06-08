#!/bin/bash

docker run --tty --interactive --hostname="java-8" --name="java-8" --memory="256m" kurron/java:1.8.0.05 /bin/bash
