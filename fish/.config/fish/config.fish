source /usr/share/cachyos-fish-config/cachyos-config.fish
source "$HOME/.cargo/env.fish"

starship init fish | source

alias lg="lazygit"
alias nv="nvim"
alias dot="~/DOTFILES/"
alias tila="~/TILAPIATSU/"
alias projects="~/PROJECTS/"
# overwrite greeting
# potentially disabling fastfetch
#function fish_greeting
#    # smth smth
#end
