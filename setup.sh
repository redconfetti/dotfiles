#!/usr/bin/env bash

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  echo "-------------------------"
  echo "Installing Ansible"
  echo "-------------------------"
  sudo apt-get install ansible
  echo "-------------------------"
elif [[ "$OSTYPE" == "darwin"* ]]; then
  echo "-------------------------"
  echo "Installing Homebrew"
  echo "-------------------------"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

  echo "-------------------------"
  echo "Installing Git"
  brew install git

  echo "-------------------------"
  echo "Installing Ansible"
  brew install ansible
else
  echo "-------------------------"
  echo "System type not supported by this setup script"
  echo "-------------------------"
fi
