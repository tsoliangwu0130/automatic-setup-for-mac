#!/bin/bash

if [[ ! -d ${ANSIBLE_DIRECTORY} ]]; then
    echo "Install Ansible"
    brew install ansible
fi

