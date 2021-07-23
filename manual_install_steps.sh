#!/bin/bash

#install google chrome

if [[ $(getconf LONG_BIT) = "64" ]]
then
    echo "64bit Detected" &&
    echo "Installing Google Chrome" &&
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb &&
    sudo dpkg -i google-chrome-stable_current_amd64.deb &&
    rm -f google-chrome-stable_current_amd64.deb
else
    echo "32bit Detected" &&
    echo "Installing Google Chrome" &&
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_i386.deb &&
    sudo dpkg -i google-chrome-stable_current_i386.deb &&
    rm -f google-chrome-stable_current_i386.deb
fi

#install git

sudo apt install git-all
 
#install curl

sudo apt install curl

#install homebrew

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

#install vagrant

curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
sudo apt-get update && sudo apt-get install vagrant

#install virtualbox

sudo apt-get install virtualbox
sudo apt-get install virtualbox—ext–pack

#install ansible 

sudo apt install software-properties-common
brew install ansible

#install gimp 

sudo snap install gimp

#install blender

sudo snap install blender --classic

#install vscode

sudo snap install code --classic
