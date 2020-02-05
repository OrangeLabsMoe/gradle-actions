# Github Actions for Gradle

[![GitHubActions](https://img.shields.io/badge/listed%20on-GitHubActions-blue.svg)](https://github-actions.netlify.com/gradle)

Execute [Gradle](https://github.com/gradle/gradle) tasks using wrapper.

## Usage

1. Choose JDK and image:

   JDK|Image
   ---|---
   OpenJDK 13|`MrRamych/gradle-actions@v4.0-openjdk-13`
   OpenJDK 11|`MrRamych/gradle-actions@v4.0-openjdk-11`
   OpenJDK 8|`MrRamych/gradle-actions@v4.0-openjdk-8`
2. By default, `check` task is executed. 
If you want to change this behaviour, specify `args` field (see example below).

## Example

An example `test.yml` file to run tests on push and pull requests.

```yaml
on: [push, pull_request]
jobs:
  test:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@master
    - uses: MrRamych/gradle-actions@v4.0-openjdk-13
      with:
        args: test
```
