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

# Load extra scripts from .zshrc.d
zshrcd=${ZDOTDIR:-$HOME}/.zshrc.d
if [ -d $zshrcd ]; then
    for i in $zshrcd/*.zsh; do
        case $i in *~) continue;; esac
        source $i
    done
fi
