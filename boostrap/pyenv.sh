PYTHON_VERSION="3.7.0"

if [[ ! -d $HOME/.pyenv ]]; then
    echo "Install pyenv"
    git clone https://github.com/yyuu/pyenv.git $HOME/.pyenv
fi

echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc
eval "$(pyenv init -)" >> ~/.zshrc

CFLAGS="-I$(xcrun --show-sdk-path)/usr/include" pyenv install -s -v $PYTHON_VERSION

pyenv global $PYTHON_VERSION