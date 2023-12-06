#!/usr/bin/env bash
# Shell script to handle symlinks to the dotfiles-local directory

# Install function for single file
InstallFile() {
	rm ~/.$1.bak 2> /dev/null
	mv ~/.$1 ~/.$1.bak 2> /dev/null
	ln -s ${PWD}/$1 ~/.$1
}

# Install individual files
InstallFile 'gitconfig_local'
