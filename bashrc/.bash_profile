#
# ~/.bash_profile
#

#export PATH="$PATH:$HOME/.scripts"
export TILA="$HOME/TILAPIATSU/"
export DOT="$HOME/DOTFILES/"

[[ -f ~/.bashrc ]] && . ~/.bashrc

. "$HOME/.cargo/env"

. "$HOME/.local/bin/env"
