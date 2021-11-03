# dotfiles

My personal command line environment. Inspired by [sloria/dotfiles].

- [Setup](docs/setup.md)
- [Old README](docs/old.md)

[sloria/dotfiles]: https://github.com/sloria/dotfiles

## Usage

### Ansible Vault

Use the edit command below to.

```bash
# edit vault file
ansible-vault edit secrets.yml

# view contents of vault file
ansible-vault view secrets.yml
```

## Playbooks

There is a single playbook you can run against the private server.
It is expected that your SSH client is configured to connect to the host
using a private SSH key without passphrase, and then use sudo on the remote
server to perform actions.

```bash
ansible-playbook local_env.yml

# Target specific roles by tags
ansible-playbook local_env.yml --tags "common"
```
