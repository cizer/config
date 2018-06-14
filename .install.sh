#!/bin/sh
NODE_VERSION=6.10.3

# Homebrew
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi
brew update
brew bundle install

# SDKMAN
if [ ! -d "$HOME/.sdkman" ]; then
  curl -s "https://get.sdkman.io" | bash
  source "$HOME/.sdkman/bin/sdkman-init.sh"
fi

# nvm/node
if [ ! -d "$HOME/.nvm" ]; then
  curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
  [[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh
  nvm install $NODE_VERSION
  nvm use $NODE_VERSION
fi

code --install-extension dbaeumer.vscode-eslint
code --install-extension esbenp.prettier-vscode
