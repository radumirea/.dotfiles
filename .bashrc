#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export PATH=$PATH:~/scripts/util:.
export GPG_TTY=$(tty)
export EDITOR=vim

alias vim='nvim'
alias ls='ls --color=auto'
alias feh='feh --scale-down'
alias music='tmux new-session -s $$ "tmux source-file ~/.ncmpcpp/tsession"' 
function cheat(){ curl cheat.sh/"$@"; }
_trap_exit() { tmux kill-session -t $$; } 
alias config="/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME"
trap _trap_exit EXIT

export PS1="\[$(tput bold)\]\[\033[38;5;9m\][\[$(tput sgr0)\]\[\033[38;5;214m\]\u\[$(tput sgr0)\]\[\033[38;5;100m\]:\[$(tput sgr0)\] \[$(tput sgr0)\]\[\033[38;5;61m\]\W\[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;9m\]]\[$(tput sgr0)\]\\$ \[$(tput sgr0)\]"
. "$HOME/.cargo/env"
