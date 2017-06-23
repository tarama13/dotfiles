#!/bin/sh

for f in .??*
do
	if [ "$f" = ".git" ]; then continue; fi
	if [ "$f" == ".DS_Store" ]; then continue; fi
	echo "$f"
	ln -sf ~/dotfiles/$f ~/$f
done
