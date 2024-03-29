# Variables
export FZF_DEFAULT_COMMAND="fdfind --type f"
export GITHUB_DIR="~/Code/github.com"
export GITHUB_MATTPJOHNSON_DIR="$GITHUB_DIR/mattpjohnson"

# Aliases

# General
alias c.="code ."
alias ct="batcat" # cat
alias l="exa --git" # ls
alias ll="l --long"

## fzf
alias fz='fzf --preview "batcat --style=numbers --color=always --line-range :500 {}"'

## Tmux
alias tmux="TERM=screen-256color-bce tmux"
alias tmm='tmux new -As Main'
## Fix vim colors from within Tmux
alias vim="TERM=xterm vim"

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
alias gsh="git stash"
alias gshl="git stash list"
alias gshp="git stash pop"

## Yarn
alias yl="yarn lint --fix"
alias ys="yarn start"
alias yt="yarn test"

## Programming languages
alias kts="kotlinc -script"

## Navigation
alias e.="vim $GITHUB_MATTPJOHNSON_DIR/dotfiles"
alias gh="cd $GITHUB_DIR"
alias ghm="cd $GITHUB_MATTPJOHNSON_DIR"
alias ~="cd ~"
# alias .="cd .."
alias ..="cd ../.."
alias ...="cd ../../.."

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
