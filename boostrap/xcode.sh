#!/bin/bash

if [[ ! -x /usr/bin/gcc ]]; then
    echo "Install Xcode"
    xcode-select --install
fi