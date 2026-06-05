source /usr/share/cachyos-fish-config/cachyos-config.fish
source "$HOME/.cargo/env.fish"

starship init fish | source

alias lg="lazygit"
alias nv="nvim"
alias dot="~/DOTFILES/"
alias tila="~/TILAPIATSU/"
alias projects="~/PROJECTS/"

set -x SSH_AUTH_SOCK $XDG_RUNTIME_DIR/ssh-agent.socket

# overwrite greeting
# potentially disabling fastfetch
#function fish_greeting
#    # smth smth
#end

# if status is-login
#     set -x SSH_AUTH_SOCK (gnome-keyring-daemon --start --components=ssh,secrets)
# end
