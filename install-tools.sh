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
