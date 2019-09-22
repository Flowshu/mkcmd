#! /bin/bash

# create a script directory in home folder
if [! -d ~/scripts]; then
    mkdir ~/scripts
fi

# copy the script into the script directory
cp ./mkcmd.sh ~/scripts/mkcmd.sh

# symlink the script to the command name mkcmd
sudo ln -s ~/scripts/mkcmd.sh /usr/local/bin/mkcmd