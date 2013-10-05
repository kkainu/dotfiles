#!/bin/bash

dir=~/.dotfiles
olddir=~/.dotfiles_old

mkdir -p $olddir
cd $dir

for file in $(find . -type f ! -perm -u+x); do
	dotfile=$(basename $file)
    echo "Moving any existing dotfiles from ~ to $olddir"
    mv ~/.$dotfile $olddir/
    echo "Creating symlink to $dotfile in home directory."
    ln -s $dir/$dotfile ~/.$dotfile
done