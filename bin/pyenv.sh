#!/bin/bash

PYTHON_VERSION="3.7.1"

if [[ ! -d $HOME/.pyenv ]]; then
    echo "Install pyenv"
    git clone https://github.com/pyenv/pyenv.git $HOME/.pyenv
fi

echo 'export PYENV_ROOT="$HOME/.pyenv"' >> $HOME/.zshrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> $HOME/.zshrc
echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> $HOME/.zshrc

exec $SHELL

pyenv install -v $PYTHON_VERSION

pyenv global $PYTHON_VERSION