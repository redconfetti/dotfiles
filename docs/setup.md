# Setup

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

## Install Brew Packages

Install packages specified in the [Brewfile].

```shell
brew bundle
```

[Brewfile]: https://robots.thoughtbot.com/brewfile-a-gemfile-but-for-homebrew

## Ansible Galaxy

Install Ansible dependencies from the
[Ansible Galaxy](https://galaxy.ansible.com/) using the following command:

```bash
ansible-galaxy install -r requirements.yml
```

## Ansible Vault

The most sensitive settings are stored in `secrets.yml`, which is encrypted
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

For more details, see [Ansible Vault]

[Ansible Vault]: https://docs.ansible.com/ansible/latest/user_guide/vault.html
