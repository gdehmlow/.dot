#!/bin/bash
# Backup old dotfiles, delete, and add symlinks
if [ -f ~/.vimrc ]; then
  echo "Found old vimrc, backing up"
  cp ~/.vimrc vimrc_old
  rm ~/.vimrc
fi
ln -s ~/.dot/.vimrc ~/.vimrc
if [ -f ~/.zpreztorc ]; then
  echo "Found old zpreztorc, backing up"
  cp ~/.zpreztorc zpreztorc_old
  rm ~/.zpreztorc
fi
ln -s ~/.dot/.zpreztorc ~/.zpreztorc

if [ ! -d ~/.vim/bundle/vundle ]; then
  git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
fi

# If on OS X, clone the iterm theme and open the folder
# so it can be installed quickly
if [ "$(uname)" == "Darwin" ]; then
  echo "In iTerm2, go to profiles > terminal and set the terminal type to 256color"
  mkdir themes
  cd themes
  git clone https://github.com/chriskempson/base16-iterm2
  cd base16-iterm2
  open .
fi
