#!/bin/bash
############################
# dotfiles.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/.dotfiles
############################

########## Variables

dir=~/.dotfiles                    # dotfiles directory
files="bashrc vimrc tmux.conf gitconfig oceanrc"    # list of files/folders to symlink in homedir

#cd $dir

# backup any existing dotfiles in homedir, then create symlinks from the homedir to any files in the ~/.dotfiles directory specified in $files
for file in $files; do
    echo "Backing up existing ~/.$file to ~/.$file~bk"
    mv ~/.$file{,~bk} 
    echo "Creating symlink to $dir/$file in home directory."
    ln -s $dir/$file ~/.$file
done
