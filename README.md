# My dotfiles
This directory contains the dotfiles for my system.

## Dependencies
### Git
```
pacman -S git
```
### Stow
```
pacman -S stow
```
## Installation
```
$ cd $HOME
$ git clone git@github.com:joelsnz/dotfiles.git
$ mv dotfiles/ .dotfiles/
$ stow .
```
## Tools

- fzf: A command line fuzzy finder
- oh my zsh: zsh configuration manager
- pyenv: python version manager
- feh: image viewer
- tmux: terminal multiplexor
- bat: cat clone with syntax highlighting
- kitty: GPU based terminal emulator
- neovim: terminal based text editor
- ranger: terminal based file explorer
- rofi: window switcher and application launcher
- dolphin: file explorer
- starship: customizable shell prompt
