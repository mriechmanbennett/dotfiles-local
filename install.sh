#!/usr/bin/env bash
# Shell script to handle symlinks to the dotfiles-local directory

# Install function for single file
InstallFile() {
        if [[ -L "~/.$1.bak" ]]
        then
                rm ~/.$1.bak 2> /dev/null
                mv -n ~/.$1 ~/.$1.bak 2> /dev/null
        else
                if [[ -L "~/.$1" ]]
                then
                        rm ~/.$1 2> /dev/null
                else
                        rm ~/.$1.bak 2> /dev/null
                        mv ~/.$1 ~/.$1.bak
                fi
        fi
        ln -s ${PWD}/$1 ~/.$1
}

# Install individual files
InstallFile 'gitconfig_local'
