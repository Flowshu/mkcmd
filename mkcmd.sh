#! /bin/bash

APPNAME=$1
SCRIPTNAME=$2
COMMANDNAME=$3

# create a script directory in home folder
if [! -d ~/scripts]; then
    mkdir ~/scripts
fi

# create a new file for the generated script
if [! -f ~/scripts/$SCRIPTNAME]; then
    touch ~/scripts/$SCRIPTNAME
else
    echo "File $SCRIPTNAME already exists in scripts directory!"
fi

# generate script for the app and write it to the script file
echo "#! /bin/bash 

open -a $APPNAME \$1" > ~/scripts/$SCRIPTNAME

# make the script executable
chmod +x ~/scripts/$SCRIPTNAME

# symlink the script to the command name
sudo ln -s ~/scripts/$SCRIPTNAME /usr/local/bin/$COMMANDNAME
