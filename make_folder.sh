#!/bin/zsh
# Create a folder and cd into it
# Usage: make_folder.sh <folder_name>

mkdir $1
cd $1
cp /root/writing/.latexmkrc .
