# Github Actions for Gradle

[![GitHubActions](https://img.shields.io/badge/listed%20on-GitHubActions-blue.svg)](https://github-actions.netlify.com/gradle)

Execute  [Gradle](https://github.com/gradle/gradle) tasks using wrapper.

## Usage

Choose JDK and image:

JDK|Image
---|---
OpenJDK 12|`MrRamych/gradle-actions/openjdk-12@2.1`
OpenJDK 11|`MrRamych/gradle-actions/openjdk-11@2.1`
OpenJDK 8|`MrRamych/gradle-actions/openjdk-8@2.1`

`args` attribute represents the task to execute.
If not specified, `check` task is executed.

## Examples

An example `main.workflow` file to run tests on push.

```hcl
workflow "Push" {
  on = "push"
  resolves = ["Test"]
}

action "Test" {
  uses = "MrRamych/gradle-actions/openjdk-12@2.1"
  args = "test"
}
```

### OpenJDK 12

```hcl
action "Check" {
  uses = "MrRamych/gradle-actions/openjdk-12@2.1"
}
```

```hcl
action "My tasks" {
  uses = "MrRamych/gradle-actions/openjdk-12@2.1"
  args = "task1 task2"
}
```

### OpenJDK 11

```hcl
action "Check" {
  uses = "MrRamych/gradle-actions/openjdk-11@2.1"
}
```

```hcl
action "My tasks" {
  uses = "MrRamych/gradle-actions/openjdk-11@2.1"
  args = "task1 task2"
}
```

### OpenJDK 8

```hcl
action "Check" {
  uses = "MrRamych/gradle-actions/openjdk-8@2.1"
}
```

```hcl
action "My tasks" {
  uses = "MrRamych/gradle-actions/openjdk-8@2.1"
  args = "task1 task2"
}
