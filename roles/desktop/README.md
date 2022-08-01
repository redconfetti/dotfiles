# Desktop Applications

Installs GUI applications for Mac OSX or Ubuntu

* Mac OS X
  * [Firefox] - Web browser
  * [Slack] - Team communication and collaboration software
  * [iTerm2] - Terminal emulator as alternative to Apple's Terminal app
  * [Zoom] - Video communication and virtual meeting platform
  * [Dash] - API documentation browser and code snippet manager
  * [Keycastr] - Open-source keystroke visualizer (used for presentations / webinars)
  * [VSCodium] - Binary releases of VS Code without MS branding/telemetry/licensing
  * [bestres] - Quickly change your screen resolution from the menubar
  * [devutils] - Offline toolbox for developers
  * Other Options (not installed)
    * [appcleaner] - Free Application uninstaller
    * [daisydisk] - Disk space visualizer
    * [iina] - Free and open-source media player
    * [imageoptim] - Tool to optimize images to a smaller size
    * [selfcontrol] - Block your own access to distracting websites
    * [insomnia] - HTTP and GraphQL client
    * [cleanshot] - Screen capturing tool
    * [sketch] - Digital design and prototyping platform

[Brave]: https://snapcraft.io/brave

[Firefox]: https://formulae.brew.sh/cask/firefox#default
[Slack]: https://formulae.brew.sh/cask/slack
[Zoom]: https://formulae.brew.sh/cask/zoom
[iTerm2]: https://formulae.brew.sh/cask/iterm2
[Dash]: https://formulae.brew.sh/cask/dash
[Keycastr]: https://formulae.brew.sh/cask/keycastr
[VSCodium]: https://formulae.brew.sh/cask/vscodium
[bestres]: https://formulae.brew.sh/cask/bestres
[devutils]: https://formulae.brew.sh/cask/devutils
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
