#!/bin/sh
mv ~/.vim ~/.vim.bak
mv ~/.vimrc ~/.vimrc.bak
mv ~/.tmux.conf ~/.tmux.conf.bak
mv ~/.tmux ~/.tmux.bak
cp -fr .vim .vimrc .tmux.conf .tmux  ~
