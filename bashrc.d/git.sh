#!/user/bin/env bash

alias gb='git branch -a'
alias gs='git status'
alias ga='git add'
alias gc='git commit -m'
alias gm='git merge'
alias gd='git diff'

function get_local_current_branch() {
  git rev-parse --abbrev-ref HEAD
}
function get_remote_default_branch() {
  git rev-parse --abbrev-ref origin/HEAD
}
function create_feat_branch() {
  git switch -c feature/"${USER}"-"$1"-$(date +"%Y%m%d-%H%M%S") $(get_remote_default_branch)
}
function gp() {
  git push -u origin $(get_local_current_branch)
}
function gf() {
  git fetch -p
  git branch -vv | grep ': gone]' | awk '{print $1}' | xargs -r git branch -d
}
