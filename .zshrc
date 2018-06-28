export LANG=ja_JP.UTF-8

bindkey -v

export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="tjkirch"
plugins=(git)

export PATH=$PATH:/Users/ken/.nodebrew/current/bin:/Users/ken/.pyenv/shims
export PATH=$PATH:/usr/local/src/scala/bin
export SCALA_HOME=/usr/local/src/scala

source $ZSH/oh-my-zsh.sh
source .kakehashi_common
source .kakehashi_dev

HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000
setopt hist_no_store
setopt inc_append_history
setopt hist_ignore_dups
setopt extended_history
setopt share_history

setopt correct

alias relogin='exec $SHELL -l'

alias ga="git add"
alias gcm="git commit -m"
alias gpso="git push origin"
alias gc="git checkout"
alias gb="git branch"
alias gba="git branch -a"
alias gs="git status"
alias gl="git log"
alias gr="git rm"
alias gplo="git pull origin"
alias gm="git merge"
alias gf="git fetch"

