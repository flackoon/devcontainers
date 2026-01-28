#!/usr/bin/fish

# Install solc-select
pipx install solc-select

## Foundry framework
curl -L https://foundry.paradigm.xyz | bash
source ~/.zshenv
foundryup

# Install cursor CLI
curl https://cursor.com/install -fsS | bash

# Install Brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv zsh)"

# Install essentials for working with Git (and other niceties)
brew install git-delta tig less scmpuff zsh-autosuggestions vim

# Copy over zsh and tig configs instead of echo-ing like a mad man
curl -L https://raw.githubusercontent.com/flackoon/devcontainers/refs/heads/master/zshrc -o ~/.zshrc
curl -L https://raw.githubusercontent.com/flackoon/devcontainers/refs/heads/master/tigrc -o ~/.tigrc

source ~/.zshrc
