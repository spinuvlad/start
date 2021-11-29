#!/bin/bash

sudo timedatectl set-timezone Europe/Bucharest
sudo apt-get install -y tree net-tools neovim tmux exuberant-ctags htop nodejs npm
sudo npm install --global gulp
#pentru productie python/Django: https://github.com/alexey-goloburdin/debian-set-up-for-django

cp -r .bashrc ~
cp -r .gitconfig ~
cp -r .tmux.conf ~
cp -r  start.sh ~
cp -r README.MD ~
cp -r .config ~
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

cd ~
sudo source .bashrc

git init

git add .bashrc 
git add .config/htop/htoprc 
git add .config/nvim/init.vim 
git add .config/nvim/UltiSnips
git add .config/nvim/vim-plug/plugins.vim 
git add .gitconfig 
git add .tmux.conf 
git add README.MD 
git add start.sh

git commit -m "new machine"

sudo rm -r start




