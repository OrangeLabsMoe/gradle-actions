#!/bin/sh
echo "Hello World!"
sh -c "chmod +x gradlew"
sh -c "./gradlew --version"
sh -c "./gradlew $*"
