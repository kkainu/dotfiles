#!/bin/bash

dir=~/.dotfiles
cd $dir

for file in $(find .  ! -name . -maxdepth 1 ! -name install.sh ! -name .git ! -name README.md); do
    dotfile=$(basename $file)
    rm ~/.$dotfile
    echo "Creating symlink to $dotfile in home directory."
    ln -s $dir/$dotfile ~/.$dotfile
done