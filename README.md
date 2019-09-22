# Github Actions for Gradle

[![GitHubActions](https://img.shields.io/badge/listed%20on-GitHubActions-blue.svg)](https://github-actions.netlify.com/gradle)

Execute  [Gradle](https://github.com/gradle/gradle) tasks using wrapper.

## Usage

Choose JDK and image:

JDK|Image
---|---
OpenJDK 12|`MrRamych/gradle-actions/openjdk-12@3.0`
OpenJDK 11|`MrRamych/gradle-actions/openjdk-11@3.0`
OpenJDK 8|`MrRamych/gradle-actions/openjdk-8@3.0`

`args` attribute represents the task to execute.
If not specified, `check` task is executed.

## Examples

An example `test.yml` file to run tests on push and pull requests.

```yaml
on: [push, pull_request]
jobs:
  test:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@master
    - uses: MrRamych/gradle-actions/openjdk-12@3.0
      with:
        args: test
```

### OpenJDK 12

Execute default task `check`

```yaml
- uses: MrRamych/gradle-actions/openjdk-12@3.0
```

Execute custom tasks

```yaml
- uses: MrRamych/gradle-actions/openjdk-12@3.0
  with:
    args: task1 task2
```

### OpenJDK 11

Execute default task `check`

```yaml
- uses: MrRamych/gradle-actions/openjdk-11@3.0
```

Execute custom tasks

```yaml
- uses: MrRamych/gradle-actions/openjdk-11@3.0
  with:
    args: task1 task2
```

### OpenJDK 8

Execute default task `check`

```yaml
- uses: MrRamych/gradle-actions/openjdk-8@3.0
```

Execute custom tasks

```yaml
- uses: MrRamych/gradle-actions/openjdk-8@3.0
  with:
    args: task1 task2
```
