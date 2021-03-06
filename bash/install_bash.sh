#!/bin/bash
# github.com/bahamanuthatch
# Install bash config files

apt install bash-completion
home=/home/$1
dir=$home/scripts_nuthatch/newinstall
mkdir $home/.bak
[ -f $home/.bashrc ] && mv $home/.bashrc $home/.bak/.bashrc.bak
[ -f $home/.bash_aliases ] && mv $home/.bash_aliases $home/.bak/.bash_aliases.bak
[ -f $home/.inputrc ] && mv $home/.inputrc $home/.bak/.inputrc.bak

cp $dir/bash/.bashrc $home/.bashrc
cp $dir/bash/.bash_aliases $home/.bash_aliases
cp $dir/bash/.inputrc $home/.inputrc
source $home/.bashrc
source $home/.inputrc

