#!/bin/sh
# NOTE: 1.Update System
# pacman -Syu
#
# NOTE: 2.Install Yay
pacman -S yay

# NOTE: 3.Install Main packages
yay -S ark ark-vcs-bin archlinux-xdg-menu pacsea-bin 7zip brave-bin btop darktable dolphin discord dkms freerdp gimp gnome-calculator greetd-dms-greeter-git dms-shell-bin evtest heroic-games-launcher-bin kdesvn hwinfo kitty lazygit luarocks onlyoffice-bin krita neovim networkmanager-openvpn networkmanager-vpn-plugin-openconnect mingw-w64-bin networkmanager-vpn-plugin-openvpn obs-studio obsidian okular onlyoffice-bin pacsea-bin pacseek qt6ct rclone signal-desktop snitch-bin steam spotify-launcher stow sunshine superfile syncthing teams-for-linux-bin tree-sitter-cli ttf-opensans ttf-firacode-nerd uv vlc vscodium webapp-manager wine xnviewmp yazi

# NOTE: 4.Install starship : https://starship.rs/guide/
curl -sS https://starship.rs/install.sh | sh

# NOTE: 5.Install Dank Shell : https://danklinux.com/docs/getting-started
curl -fsSL https://install.danklinux.com | sh

# NOTE: 6.Install dms-greeter ( Loggin manager ) : https://danklinux.com/docs/dankgreeter/installation
dms greeter install

#yay -S xf86-input-libinput xf86-input-wacom wacom-utility-git wacomtablet input-wacom-dkms-git
#yay -S winboat
# yay -S --needed - <pkglist.txt
