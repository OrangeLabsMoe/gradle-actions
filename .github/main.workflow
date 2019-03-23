workflow "Lint on push" {
  on = "push"
  resolves = [
    "Markdown lint",
    "Dockerfile lint",
    "Shell lint"
  ]
}

action "Markdown lint" {
  uses = "bltavares/actions/mdlint@master"
}

action "Dockerfile lint" {
  uses = "bltavares/actions/hadolint@master"
}

action "Shell lint" {
  uses = "bltavares/actions/shfmt@master"
}
