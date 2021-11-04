# Homebrew Casks

Installs GUI applications.

* [Firefox] - Web browser
* [Slack] - Team communication and collaboration software
* [Zoom] - Video communication and virtual meeting platform
* [Dash] - API documentation browser and code snippet manager
* [VSCodium] - Binary releases of VS Code without MS branding/telemetry/licensing
* [bestres] - Quickly change your screen resolution from the menubar
* Other Options (not installed)
  * [appcleaner] - Free Application uninstaller
  * [daisydisk] - Disk space visualizer
  * [iina] - Free and open-source media player
  * [imageoptim] - Tool to optimize images to a smaller size
  * [selfcontrol] - Block your own access to distracting websites
  * [insomnia] - HTTP and GraphQL client
  * [cleanshot] - Screen capturing tool
  * [sketch] - Digital design and prototyping platform

[Firefox]: https://formulae.brew.sh/cask/firefox#default
[Slack]: https://formulae.brew.sh/cask/slack
[Zoom]: https://formulae.brew.sh/cask/zoom
[Dash]: https://formulae.brew.sh/cask/dash
[VSCodium]: https://formulae.brew.sh/cask/vscodium
[bestres]: https://formulae.brew.sh/cask/bestres
[appcleaner]: https://formulae.brew.sh/cask/appcleaner
[daisydisk]: https://formulae.brew.sh/cask/daisydisk
[iina]: https://formulae.brew.sh/cask/iina
[imageoptim]: https://formulae.brew.sh/cask/imageoptim
[selfcontrol]: https://formulae.brew.sh/cask/selfcontrol
[insomnia]: https://formulae.brew.sh/cask/insomnia
[cleanshot]: https://formulae.brew.sh/cask/cleanshot
[sketch]: https://formulae.brew.sh/cask/sketch

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