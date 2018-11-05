#!/bin/bash

HOSTNAME=${1:-$(hostname)}
LIB_DIRECTORY="${HOME}/lib"
SETUP_DIRECTORY=$(pwd)
ANSIBLE_DIRECTORY="${LIB_DIRECTORY}/ansible"
ANSIBLE_PLAYBOOKS_DIRECTORY="${SRC_DIRECTORY}/playbooks"

# BASEDIR=$(dirname "$0")

# source ${SETUP_DIRECTORY}/bootstrap/xcode.sh
# source ${SETUP_DIRECTORY}/bootstrap/homebrew.sh
# source ${SETUP_DIRECTORY}/bootstrap/ssh-key.sh
# source ${SETUP_DIRECTORY}/bootstrap/pyenv.sh
# source ${SETUP_DIRECTORY}/bootstrap/ansible.sh

# test
ansible-playbook ./test/test_connection.yml

# run ansible
ansible-playbook ./playbooks/playbook.yml