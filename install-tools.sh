#!/usr/bin/fish

# Some manual exports
## This makes pnpm installations to be available globally
echo "export PNPM_HOME=\\"/home/vscode/.local/share/pnpm\\"" >> ~/.zshrc
## This is the default path for foundry's binaries
echo "export FOUNDRY=\\"/home/vscode/.foundry/bin\\"" >> ~/.zshrc
## And here we just add both of them to PATH.
echo "export PATH=\\"\\$PATH:\\$PNPM_HOME:\\$FOUNDRY\\"" >> ~/.zshrc

# Install hardhat
# pnpm install hardhat -g

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
echo >> /home/vscode/.zshrc
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv zsh)"' >> /home/vscode/.zshrc
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv zsh)"

# Install essentials for working with Git
brew install git-delta tig less scmpuff zsh-autosuggestions vim

echo 'eval "$(scmpuff init -s)"' >> /home/vscode/.zshrc
