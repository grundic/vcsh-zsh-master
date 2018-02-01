#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Shell customizations
setopt interactivecomments  # activate the bash-style comments

# Load extra scripts from .zshrc.d
zshrcd=${ZDOTDIR:-$HOME}/.zshrc.d
if [ -d $zshrcd ]; then
    for i in $zshrcd/*.zsh; do
        case $i in *~) continue;; esac
        source $i
    done
fi
