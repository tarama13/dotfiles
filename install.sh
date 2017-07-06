#!/bin/sh

for f in .??*
do
  if [ "$f" = ".git" ]; then continue; fi
  if [ "$f" = ".gitignore" ]; then continue; fi
  if [ "$f" = ".DS_Store" ]; then continue; fi

  echo "$f"
  ln -sf ~/dotfiles/$f ~/$f
done

ln -sf ~/.vim ~/.config/nvim
ln -sf ~/.vimrc ~/.config/nvim/init.vim
