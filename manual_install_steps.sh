#!/bin/bash

#install ansible 
sudo apt install ansible
#snap collection for ansible
ansible-galaxy collection install community.general
#ansible-playbook devenv.yml --aks-become-pass
