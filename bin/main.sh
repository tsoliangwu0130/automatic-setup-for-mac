#!/bin/bash

HOSTNAME=${1:-$(hostname)}
LIB_DIRECTORY="${HOME}/lib"
SETUP_DIRECTORY="${HOME}/automatic-setup-for-mac"
ANSIBLE_DIRECTORY="${LIB_DIRECTORY}/ansible"
ANSIBLE_PLAYBOOKS_DIRECTORY="${SRC_DIRECTORY}/playbooks"

source ${SETUP_DIRECTORY}/bootstrap/homebrew.sh
source ${SETUP_DIRECTORY}/bootstrap/ssh-key.sh
source ${SETUP_DIRECTORY}/bootstrap/xcode.sh
source ${SETUP_DIRECTORY}/bootstrap/pyenv.sh
source ${SETUP_DIRECTORY}/bootstrap/ansible.sh
source ${SETUP_DIRECTORY}/bootstrap/ansible-playbook.sh