# redconfetti dotfiles

My personal configuration files.

Inspired by [Managing Dotfiles With Git: Get Your Dotfiles Under Control](https://www.foraker.com/blog/get-your-dotfiles-under-control).
See also [Unofficial guide to dotfiles on GitHub](http://dotfiles.github.io/)

## Other Examples

I might want to steal something from these other examples eventually. For now I'm sticking to Ryan Bates version, because it uses a Rakefile instead of a Bash script.

* [ryanb/dotfiles](https://github.com/ryanb/dotfiles)
* [paulmillr/dotfiles](https://github.com/paulmillr/dotfiles/blob/master/bootstrap-new-system.sh)
* [holman/dotfiles](https://github.com/holman/dotfiles)

## Installation

Clone the repository to `~/.dotfiles`, then run `rake install`. You will be prompted at each step to ensure that your current configuration is not destroyed.

See the [Rakefile](./Rakefile) to inspect the installation script.

After installing, open a new terminal window to see the effects.

``` shell
git clone git://github.com/redconfetti/dotfiles ~/.dotfiles
cd ~/.dotfiles
rake install
```

### Machine Specific Configuration

If you need aliases that are specific to your machine, place them in `.profile`.

## Homebrew

See [Brewfile - a Gemfile but for Homebrew](https://robots.thoughtbot.com/brewfile-a-gemfile-but-for-homebrew)

``` shell
brew bundle
```

## Features

* Segregation of Bash environment configurations:
  * Aliases
  * Variables
  * Path
  * Ruby
  * Java / JVM / jRuby
  * NodeJS
  * Cloud9
* Customizations
  * [Starship] shell prompt
  * [Exa] replacement for Ls, featuring more color and Git aware
  * [TLDR] cheatsheets for console commands
  * [Bat] replacement for Cat, featuring syntax highlighting and Git integration
* Other
  * Rspec - Color output and 'documentation' formatting output
  * Git - Ignore thumbnail database files for Mac (.DS_Store) and Windows
    (Thumbs.db)
  * [Imgcat script] for [iTerm2]

[Starship]: https://starship.rs/
[Exa]: https://the.exa.website/
[TLDR]: https://github.com/tldr-pages/tldr
[Bat]: https://github.com/sharkdp/bat
[Imgcat script]: https://iterm2.com/documentation-images.html
[iTerm2]: https://iterm2.com/index.html

## Vim

Intend to update with Vim configuration.

* [amix/vimrc](https://github.com/amix/vimrc/blob/master/vimrcs/basic.vim)
* [square/maximum-awesome](https://github.com/square/maximum-awesome)
