# Aliases

# General
alias ct="bat" # cat
alias l="exa --git" # ls
alias ll="l --long"

## Fix vim colors from within Tmux
alias vim="TERM=xterm vim"
## Tmux
alias tmux="TERM=screen-256color-bce tmux"
alias tmm='tmux new -As Main'

## Git
alias ga="git add"
alias gc="git commit"
alias gca="git commit --amend --no-edit"
alias gco="git checkout"
alias gd="git diff"
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"
alias gs="git status"
alias gp="git pull"
alias gpsh="git push"

## Navigation
alias gh="cd ~/Code/github"
alias ghm="gh && cd mattpjohnson"
alias ~="cd ~"
# alias .="cd .."
alias ..="cd ../.."
alias ...="cd ../../.."
