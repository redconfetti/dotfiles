# dotfiles

My personal command line environment. Inspired by [sloria/dotfiles].

[sloria/dotfiles]: https://github.com/sloria/dotfiles

## Setup

- See [Setup Instructions](docs/setup.md)

## Usage

There is a single playbook you can run against your local machine.

```bash
ansible-playbook local_env.yml

# Target specific roles by tags
ansible-playbook local_env.yml --tags "cmdline"
ansible-playbook local_env.yml --tags "casks"
ansible-playbook local_env.yml --tags "development"
```

## Roles

The following 'roles' perform the following tasks:

- package_manager - Installs package manager specific to operating system
- [cmdline] - Sets up Bash configuration, installs utilities (Starship, Exa, Bat,
  TLDR, htop)
- [casks] - Installs GUI applications using Homebrew-Cask
- git - Installs and configures Git
- lynx - Installs and configures Lynx terminal browser
- imgcat - Installs imgcat utility (used with iTerm2)
- ruby - Configures Ruby and related utilities (jRuby, Gem, Rspec)
- nvim - Configures NeoVim
- node - Installs and configures NVM
- vscode - Configures VScode
- [macos] - Configures MacOS system with preferred configurations
- development - Creates ~/Development directory and clones Github repositories

[cmdline]: roles/cmdline/README.md
[casks]: roles/casks/README.md
[macos]: roles/macos/README.md
