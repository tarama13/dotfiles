#!/bin/sh

for f in .??*
do
	if [ "$f" = ".git" ]; then continue; fi
	if [ "$f" = ".gitignore" ]; then continue; fi

	echo "$f"
	unlink ~/./$f
done
