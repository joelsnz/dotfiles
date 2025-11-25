#!/bin/bash

brew install stow
brew install clang-format

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
stow --adopt clang nvim tmux
git restore .
~/.tmux/plugins/tpm/bin/install_plugins
