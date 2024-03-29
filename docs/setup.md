# Setup

## Machine Specific Configurations

If you need configuration that is specific to your machine, place them in `.profile`.

## Setup Script

You can run `setup.sh` to install the appropriate package managers (if needed),
and then install the prerequisite software (Ansible, Git, etc).

```bash
./setup.sh
```

### Mac OS X

The setup script will install [Homebrew] as a package manager.

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

## Ansible Vault

Sensitive settings are stored in `secrets.yml`, which is encrypted
using Ansible Vault. A single password is used to unencrypt this file,
stored in `~/.vault_pass`. Run the following command to create a random password
in this file:

```bash
if ! [[ -s ~/.vault_pass ]]; then
  openssl rand -base64 48 > ~/.vault_pass && chmod 600 ~/.vault_pass
fi
```

Run the following command to initialize your `secrets.yml` Vault file using
the contents of `secrets_example.yml` as a template.

```bash
ansible-vault encrypt secrets_example.yml --output secrets.yml
```

To view or edit the Vault file, run the following commands. You'll want to
edit this file and configure secrets such as your Mac admin username
and password, and Github access token.

```bash
# edit vault file
ansible-vault edit secrets.yml

# view contents of vault file
ansible-vault view secrets.yml
```

By default this file is not included in the repository. You can comment this
out in `.gitignore` to ensure it is included in your repository.
It is recommended that you use a private repository if you're going
to store encrypted secrets in your repository.

For more details, see [Ansible Vault]

[Ansible Vault]: https://docs.ansible.com/ansible/latest/user_guide/vault.html
