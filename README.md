# dotfiles

My personal command line environment. Inspired by [sloria/dotfiles].

[sloria/dotfiles]: https://github.com/sloria/dotfiles

## Setup

- See [Setup Instructions](docs/setup.md)

## Usage

There is a single playbook you can run against your local machine.

```bash
# Target all roles
ansible-playbook local_env.yml

# Target specific roles by tags
ansible-playbook local_env.yml --tags "package_manager"
ansible-playbook local_env.yml --tags "cmdline"
ansible-playbook local_env.yml --tags "ssh"
ansible-playbook local_env.yml --tags "ruby"
ansible-playbook local_env.yml --tags "nvim"
ansible-playbook local_env.yml --tags "node"
ansible-playbook local_env.yml --tags "vscodium"
ansible-playbook local_env.yml --tags "macos"
ansible-playbook local_env.yml --tags "development"
ansible-playbook local_env.yml --tags "desktop"
ansible-playbook local_env.yml --tags "docker"
```

## Roles

The following 'roles' perform the following tasks:

- package_manager - Installs package manager specific to operating system
- [cmdline] - Sets up Bash configuration, installs utilities (Starship, Exa,
  Bat, TLDR, htop)
- [ssh] - Configures SSH
- [ruby] - Configures Ruby and related utilities (jRuby, Gem, Rspec)
- [nvim] - Configures NeoVim
- node - Installs and configures NVM
- [vscodium] - Configures VSCodium
- [macos] - Configures MacOS system with preferred configurations
- [development] - Creates ~/Development; install/configures Git, clones Github repos
- [desktop] - Installs desktop applications

[ssh]: roles/ssh/README.md
[cmdline]: roles/cmdline/README.md
[vscodium]: roles/vscodium/README.md
[development]: roles/development/README.md
[desktop]: roles/desktop/README.md
[macos]: roles/macos/README.md
