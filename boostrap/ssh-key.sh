if [[ ! -d $HOME/.ssh ]]; then
    echo "Generating SSH key"
    ssh-keygen
fi