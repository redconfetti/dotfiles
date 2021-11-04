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
ansible-playbook local_env.yml --tags "bash"
```
