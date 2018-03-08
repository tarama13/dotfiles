#!/bin/sh
DOTPATH=~/dotfiles

mkdir ~/dotfiles_backup
for f in .??*
do
  if [ "$f" = ".git" ]; then continue; fi
  if [ "$f" = ".gitignore" ]; then continue; fi
  if [ "$f" = ".DS_Store" ]; then continue; fi

  echo "$f"
  cp ~/$f ~/dotfiles_backup/
  ln -sf ~/dotfiles/$f ~/$f
done

ln -sf $DOTPATH/.vim ~/.config/nvim
ln -sf $DOTPATH/.vimrc ~/.config/nvim/init.vim
