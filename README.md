# Github Actions for Gradle

## Usage
An example workflow to run tests on push

```
workflow "Push" {
  on = "push"
  resolves = ["Test"]
}

action "Test" {
  uses = "mrramych/gradle-actions@master"
  args = "test"
}
```
