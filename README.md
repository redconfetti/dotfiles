# dotfiles

My personal command line environment. Inspired by [sloria/dotfiles].

[sloria/dotfiles]: https://github.com/sloria/dotfiles

## Setup

- See [Setup Instructions](docs/setup.md)

## Usage

There is a single playbook you can run against the private server.
It is expected that your SSH client is configured to connect to the host
using a private SSH key without passphrase, and then use sudo on the remote
server to perform actions.

```bash
ansible-playbook local_env.yml

# Target specific roles by tags
ansible-playbook local_env.yml --tags "bash"
```
