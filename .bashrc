#!/bin/bash

[[ $- != *i*  ]] && return

#sometimes $SSH_AUTH_SOCK gets overwritten during bash startup
[ -e "$HOME/.profile" ] && source "$HOME/.profile"

if [ -d "$HOME/.config/bash" ]
then
    for entry in $(ls -1 "$HOME/.config/bash")
    do
        source "$HOME/.config/bash/$entry"
    done
fi

# Use bash-completion, if available
[[ -f "${PREFIX-}/usr/share/bash-completion/bash_completion" ]] && \
    . "${PREFIX-}/usr/share/bash-completion/bash_completion"

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize
