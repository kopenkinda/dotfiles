#!/bin/bash

# --- CONFIG ---
# DOTFILES_FOLDER="~/.dotfiles"; #dotfiles storage folder
DOTFILES_FOLDER="$HOME/.dotfiles"; #dotfiles storage folder
# --- END ---

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )";
DOTFILES=$(ls $DIR/files -aI '.' -I '..');

#Create DOTFILES_FOLDER in ~ if it doesn't already exist.
mkdir -p $DOTFILES_FOLDER;

#Remove old dotfiles and replace them
for dotfile in $DOTFILES;
do
    dtf="$DOTFILES_FOLDER/$dotfile";
    [ -f $dtf ]             && rm $dtf;
    [ -f "$HOME/$dotfile" ] && rm "$HOME/$dotfile";
    [ -L "$HOME/$dotfile" ] && unlink "$HOME/$dotfile";
    cp "$DIR/files/$dotfile" "$dtf";
    ln -s "$dtf" "$HOME/$dotfile";
done