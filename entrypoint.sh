#!/bin/sh
set -e
chmod +x gradlew
./gradlew --version
sh -c "./gradlew $*"
