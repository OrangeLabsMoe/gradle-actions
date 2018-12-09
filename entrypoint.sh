#!/bin/sh
set -e
chmod +x gradlew
./gradlew --version
./gradlew "$*"
