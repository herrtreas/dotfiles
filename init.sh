#!/bin/bash

# Based on https://wrotenwrites.com/a_modern_terminal_workflow_1/

# Cleanup
rm -rf ~/.vim ~/.vimrc ~/.zshrc ~/.tmux ~/.tmux.conf ~/.config/nvim 2> /dev/null

brew install zsh neovim python3 ag tmux antigen reattach-to-user-namespace
brew tap caskroom/cask
brew cask install iterm2

curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

pip3 install neovim

# Fonts
brew tap caskroom/fonts
brew cask install font-fira-code

# Make zsh default
sudo sh -c "echo $(which zsh) >> /etc/shells"
chsh -s $(which zsh)

# Prepare config
mkdir -p ~/.config ~/.config/nvim
ln -s ~/dotfiles/zshrc ~/.zshrc
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/vimrc ~/.config/nvim/init.vim

