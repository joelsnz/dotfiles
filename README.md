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
cd $HOME
git clone git@github.com:joelsnz/dotfiles.git
mv dotfiles/ .dotfiles/
stow .
```
## Modules
### zsh
1. Install zsh
```
sudo pacman -S zsh zsh-completions # or with your package manager
```
2. Install starship and Oh My Zsh
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
curl -sS https://starship.rs/install.sh | sh
```
3. Install OMZ plugins
```
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/jeffreytse/zsh-vi-mode $ZSH_CUSTOM/plugins/zsh-vi-mode
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
```
4. Install dependencies with your package manager
- bat: Cat clone with syntax highlighting
- exa: Improved file lister
- pyenv: Pyhton version manager
- zoxide: smarter cd command
5. Stow package
```
stow --adopt zsh
git restore zsh
```
### kitty
1. Install kitty
```
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin
```
2. Install JetBrains Mono Nerd Font
3. Stow package
```
stow --adopt kitty
git restore kitty
```
### tmux
1. Install tmux with your package manager
2. Install Tmux Plugin Manager
```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```
3. Install TPM plugins with `prefix + I`
4. Stow package
```
stow --adopt tmux
git restore tmux
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
- exa: improved file lister
- zoxide: smarter cd command
