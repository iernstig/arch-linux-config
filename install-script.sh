#!/usr/bin/env sh

# Ensure packages up to date
sudo pacman -Syu
# install base-devel if partal or not installed
# TODO: get list of packages in base-devel and check all
if pacman -Qs gcc > /dev/null; then
   echo "gcc is installed"
else
    sudo pacman -S --needed base-devel
fi

# install python and pip
if !(pacman -Qs python > /dev/null); then
    sudo pacman -S python
fi

if !(pacman -Qs python-pip > /dev/null); then
    sudo pacman -S -y python-pip
fi

pip install --user rope pyflakes pycodestyle yapf
