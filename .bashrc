#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

source ~/.config/bash/aliases
source ~/.config/bash/binds
source /usr/share/fzf/key-bindings.bash
source /usr/share/fzf/completion.bash

shopt -s autocd #change directory without typing cd

#prompt
export PS1="\[$(tput bold)\]\[\033[38;5;9m\][\[$(tput sgr0)\]\[\033[38;5;214m\]\u\[$(tput sgr0)\]\[\033[38;5;100m\]:\[$(tput sgr0)\] \[$(tput sgr0)\]\[\033[38;5;61m\]\W\[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;9m\]]\[$(tput sgr0)\]\\$ \[$(tput sgr0)\]"

trap _trap_exit EXIT


