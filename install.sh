#!/bin/bash

dir=~/.dotfiles
olddir=~/.dotfiles_old

mkdir -p $olddir
cd $dir

for file in $(find .  ! -name . -maxdepth 1 ! -name install.sh ! -name .git); do
    dotfile=$(basename $file)
    echo "Moving any existing dotfiles from ~ to $olddir"
    mv ~/.$dotfile $olddir/
    echo "Creating symlink to $dotfile in home directory."
    ln -s $dir/$dotfile ~/.$dotfile
done