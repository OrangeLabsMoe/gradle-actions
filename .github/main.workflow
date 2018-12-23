workflow "Push" {
  on = "push"
  resolves = ["Test Library"]
}

action "Test Library" {
  uses = "MrRamych/gradle-actions@master"
  args = "test"
}
