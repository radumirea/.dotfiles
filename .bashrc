#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

source ~/.config/bash/aliases
source ~/.config/bash/envs
source ~/.config/bash/binds
source ~/.cargo/env

trap _trap_exit EXIT


