#
# ~/.bashrc
#

# If not running interactively, don't do anything
#[[ $- == *i* ]] || return

alias ls='ls -alFNh --color=auto --group-directories-first'
alias grep='grep --color=auto'
alias lg='lazygit'
alias yayf="yay -Slq | fzf --multi --preview 'yay -Sii {1}' --preview-window=down:75% | xargs -ro yay -S"

#set PS1 '[\u@\h \W]\$ '


