#!/bin/sh

for f in .??*
do
	[[ "$f" == ".git" ]] && continue
	[[ "$f" == ".DS_Store" ]] && continue
	ln -sf ~/dotfiles/$f ~/$f
done
