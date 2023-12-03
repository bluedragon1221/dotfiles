# dotfiles
My dotfiles (steadily growing)

Configured using the [dotfiles home repo method](https://github.com/bluedragon1221/notes/blob/main/Linux/Git/Dotfiles%20(Home%20Repo).md).

# Install
## Shell
Install `zsh`
### Move `.zshrc`
```sh
### /etc/zsh/zshenv ###
ZDOTDIR=~/.config/zsh
```
## Terminal Emulator
Install [`alacritty`](https://alacritty.org)
## Text Editor
Install [`neovim`](https://neovim.io)
## Window Manager
Install [`wayland`](https://wayland.freedesktop.org) and [`riverwm`](https://github.com/riverwm/river).
### Bar
Install [`waybar`](https://github.com/alexays/waybar).

## Script
```sh
sudo pacman -S zsh alacritty neovim wayland waybar
```
