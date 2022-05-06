#!/usr/bin/env bash

sudo apt-get update
sudo apt-get install postgresql-client

# Export env vars
export $(grep -v '^#' postgres.env | xargs)

# asdf
sudo apt install curl git gcc make
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.10.0
echo ". $HOME/.asdf/asdf.sh" >> ~/.bashrc
echo ". $HOME/.asdf/completions/asdf.bash" >> ~/.bashrc
source ~/.bashrc

# ruby
asdf plugin add ruby
asdf install ruby 3.1.0
asdf local ruby 3.1.0