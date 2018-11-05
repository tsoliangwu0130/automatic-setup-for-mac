#!/bin/bash

if [[ ! -d $HOME/.ssh ]]; then
    echo "Generating SSH key"
    ssh-keygen
fi