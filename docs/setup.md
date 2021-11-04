# Setup

## Machine Specific Configurations

If you need aliases that are specific to your machine, place them in `.profile`.

## Install Homebrew

Install [Homebrew]

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

When running Homebrew software and libraries, it's best for them to detect each
other in the environment, especially when trying to build new software. You can
ensure that this is the case by editing /etc/paths as super user so that
/usr/local/bin is defined before the other paths.

```shell
$ sudo nano /etc/paths

/usr/local/bin
/usr/bin
/bin
/usr/sbin
/sbin
```

[Homebrew]: http://brew.sh/

## Install Git and Ansible

```shell
brew install git
brew install ansible
```

## Ansible Vault

Sensitive settings are stored in `secrets.yml`, which is encrypted
using Ansible Vault. A single password is used to unencrypt this file,
stored in `~/.vault_pass`. Run the following command to create a random password
in this file:

```bash
openssl rand -base64 48 > ~/.vault_pass && chmod 600 ~/.vault_pass
```

Run the following command to initialize your `secrets.yml` Vault file using
the contents of `secrets_example.yml` as a template.

```bash
ansible-vault encrypt secrets_example.yml --output secrets.yml
```

To view or edit the Vault file, run the following commands:

```bash
# edit vault file
ansible-vault edit secrets.yml

# view contents of vault file
ansible-vault view secrets.yml
```

By default this file is not included in the repository. You can comment this
out in `.gitignore` to ensure it is included in your repository.
It is recommended that you use a private repository if you're going
to store encrypted secrets.

For more details, see [Ansible Vault]

[Ansible Vault]: https://docs.ansible.com/ansible/latest/user_guide/vault.html
