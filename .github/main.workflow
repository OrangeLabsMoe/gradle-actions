workflow "Push" {
  on = "push"
  resolves = [
    "Test Library OpenJDK 8",
    "Test Library OpenJDK 11"
  ]
}

action "Test Library OpenJDK 8" {
  uses = "MrRamych/gradle-actions@openjdk-8"
  args = "test"
}

action "Test Library OpenJDK 11" {
  uses = "MrRamych/gradle-actions@openjdk-11"
  args = "test"
}
