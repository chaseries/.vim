#!/usr/bin/env bash

curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
ln -s $(pwd)/vimrc ~/.vimrc
vim +PlugInstall
sudo apt-get install cmake -y
sudo apt-get install build-essential -y
sudo apt-get install python-dev
$HOME/.vim/plugged/YouCompleteMe/install.py
