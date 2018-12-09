#!/bin/sh
set -e
sh -c "chmod +x gradlew"
sh -c "./gradlew --version"
sh -c "./gradlew $*"
