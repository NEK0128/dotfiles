#パスファイル読み込み
source ~/.zsh_path
#LANG
export LANG=ja_JP.UTF-8
 
# KEYBIND
bindkey -v

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# time that oh-my-zsh is loaded.
ZSH_THEME="tjkirch"
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration
export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/usr/local/git/bin:/usr/texbin"

# HISTORY
HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000
## history (fc -l) コマンドをヒストリリストから取り除く。
setopt hist_no_store
## すぐにヒストリファイルに追記する。
setopt inc_append_history
## 直前と同じコマンドをヒストリに追加しない
setopt hist_ignore_dups
## zsh の開始, 終了時刻をヒストリファイルに書き込む
setopt extended_history
## ヒストリを呼び出してから実行する間に一旦編集
setopt hist_verify
## ヒストリを共有
setopt share_history
## コマンドラインの先頭がスペースで始まる場合ヒストリに追加しない
setopt hist_ignore_space
 
## スペルチェック
setopt correct

##Aliasの設定
# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
#alias ls='ls -alh --color'
alias vi='vim'
alias vim='vim'
alias rmr='rm -r' 
# my aliases
alias lt='ls -AltrF'
alias hi='history '
# my aliases git
alias ga="git add"
alias gcm="git commit -m"
alias gpo="git push origin"
alias gc="git checkout"
alias gb="git branch"
alias gs="git status"
alias gl="git log"
alias gr="git rm"
