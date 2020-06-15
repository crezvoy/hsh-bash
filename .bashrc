#!/bin/bash

[[ $- != *i*  ]] && return

#sometimes $SSH_AUTH_SOCK gets overwritten during bash startup
[ -e "$HOME/.profile" ] && source "$HOME/.profile"

if [ -d "$HOME/.config/bash.d" ]
then
    for entry in $(ls -1 "$HOME/.config/bash.d")
    do
        source "$HOME/.config/bash.d/$entry"
    done
fi

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

