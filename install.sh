#!/bin/bash

dir=~/.dotfiles

for file in $(find .  ! -name . -maxdepth 1 ! -name install.sh ! -name .git ! -name README.md); do
    dotfile=$(basename $file)
    cp -r $dotfile $dir/
    rm -rf ~/.$dotfile
    echo "Creating symlink to $dotfile in home directory."
    echo "ln -s $dir/$dotfile ~/.$dotfile"
    ln -s $dir/$dotfile ~/.$dotfile
done
