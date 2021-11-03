# Homebrew Casks

GUI applications I deem necessary on any system

* [Firefox] - Web browser
* [Slack] - Team communication and collaboration software
* [Zoom] - Video communication and virtual meeting platform
* [Dash] - API documentation browser and code snippet manager

[Firefox]: https://formulae.brew.sh/cask/firefox#default
[Slack]: https://formulae.brew.sh/cask/slack
[Zoom]: https://formulae.brew.sh/cask/zoom
[Dash]: https://formulae.brew.sh/cask/dash

## Gaining Admin Access

You have to be an administrator to install software using Homebrew Cask.

### Make Yourself an Admin

```shell
# become admin user
su admin-username

# Add primary user to admin group
sudo dseditgroup -o edit -a your-primary-username -t user admin

# Check if user is in admin group
sudo dseditgroup -o checkmember -m your-primary-username admin

# exit admin-user
exit
```

### Remove your Admin Access

```shell
# become admin user
su admin-username

# Remove user from admin group
sudo dseditgroup -o edit -d your-primary-username -t user admin

# Confirm your primary user account is not in admin group
sudo dseditgroup -o checkmember -m your-primary-username admin
```
