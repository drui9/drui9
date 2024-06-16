#!/bin/bash
# only run on termux!
if [ "$EUID" -eq 0 ]
then
  echo "Cannot run as root!"
  exit
fi

apt update && apt upgrade -y;
apt update && apt install git -y;
which nvim >> /dev/null;
if [ $? -ne 0 ];
then
  apt install neovim -y;
  if [ $? -ne 0 ];
  then
    echo 'Install neovim and try again.'
    exit
  fi
fi
which zsh >> /dev/null;
if [ $? -ne 0 ];
then
  apt install zsh -y;
  if [ $? -ne 0 ];
  then
    echo 'Install zsh and try again.'
    exit
  fi
fi
# setup neovim
mkdir -p ~/.config;
if [ -d ~/.config/nvim ];
then
  rm -rf ~/.config/nvim;
fi
cp -r nvim ~/.config;
# -- setup zsh
if [ -d ~/.oh-my-zsh ];
then
  omz update
else
  git clone https://github.com/ohmyzsh/ohmyzsh ~/.oh-my-zsh;
fi
# --
if [ $? -eq 0 ];
then
  cp zshrc ~/.zshrc
fi
echo '-- setup complete --'

