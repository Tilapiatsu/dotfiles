#!/bin/sh
# NOTE: 1.Update System
# pacman -Syu
#
# NOTE: 2.Install Yay
pacman -S yay

# NOTE: 3.Install stow
yay -S stow

# NOTE: 4.Stow everything
stow Ark-Vcs
stow blender
stow btop
stow DankMaterialShell
stow dolphin
stow fish
stow gtk-3.0
stow gtk-4.0
stow kitty
stow lazyvim
stow mimeapps
rm -r ~/.config/niri
stow niri
stow qt5ct
stow qt6ct
stow starship
stow superfile
stow xdg-open

# NOTE: 5.Install Main packages
yay -S ark ark-vcs-bin archlinux-xdg-menu 7zip brave-bin btop darktable dolphin discord dkms freerdp gimp gnome-calculator greetd-dms-greeter-git dms-shell-bin evtest heroic-games-launcher-bin kdesvn hwinfo kitty lazygit luarocks onlyoffice-bin krita neovim networkmanager-openvpn networkmanager-vpn-plugin-openconnect mingw-w64-bin networkmanager-vpn-plugin-openvpn obs-studio obsidian okular pacsea-bin pacseek qt6ct rclone signal-desktop snitch-bin steam spotify-launcher sunshine superfile syncthing teams-for-linux-bin tree-sitter-cli ttf-opensans ttf-firacode-nerd uv vlc vscodium webapp-manager wine webkit2gtk xnviewmp yazi

# NOTE: 6.Install starship : https://starship.rs/guide/
curl -sS https://starship.rs/install.sh | sh

# NOTE: 7.Install Dank Shell : https://danklinux.com/docs/getting-started
curl -fsSL https://install.danklinux.com | sh

# NOTE: 8.Install dms-greeter ( Loggin manager ) : https://danklinux.com/docs/dankgreeter/installation
dms greeter install

#yay -S xf86-input-libinput xf86-input-wacom wacom-utility-git wacomtablet input-wacom-dkms-git
#yay -S winboat
# yay -S --needed - <pkglist.txt
