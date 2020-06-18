#! /bin/sh

# this script is called after each git command, and after 
# the 'bundle' and 'remove' command which have no git equivalent.
# The following environment variables are set:
#     - HSH_ROOT: current hsh root
#     - HSH_REPOSITORY: current repository name
#     - HSH_ACTION: current git or hsh action
# The script is called with HSH_ROOT as working directory, exept for the bundle
# command that for which the working directory is the bundle fakeroot.

case "$HSH_ACTION" in
    clone)
        [ -e "$HSH_ROOT/.config/bash" ] || mkdir -p "$HSH_ROOT/.config/bash"
        [ -e "$HSH_ROOT/.local/share/bash-completion/completions" ] || mkdir -p "$HSH_ROOT/.local/share/bash-completion/completions"
        ;;
esac
