#!/bin/bash

echo "Pre-installed"

./bin/xcode.sh
./bin/homebrew.sh
./bin/zsh.sh
./bin/ssh-key.sh
./bin/pyenv.sh
./bin/ansible.sh

# test
echo "Connection testing"
ansible-playbook ./test/test_connection.yml

# run ansible
echo "Ansible Run"
ansible-playbook ./playbooks/playbook.yml