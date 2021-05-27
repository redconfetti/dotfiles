# .bashrc
# Run with every new window

# Load Bash Aliases
[[ -s "$HOME/.bash_aliases" ]] && source "$HOME/.bash_aliases"

# Load Bash Environment variables
[[ -s "$HOME/.bash_env_vars" ]] && source "$HOME/.bash_env_vars"

# Load Bash Path
[[ -s "$HOME/.bash_env_path" ]] && source "$HOME/.bash_env_path"

# Load Java Environment Settings
[[ -s "$HOME/.bash_env_java" ]] && source "$HOME/.bash_env_java"

# Load Ruby Environment Settings
[[ -s "$HOME/.bash_env_ruby" ]] && source "$HOME/.bash_env_ruby"

# Load NodeJS Environment Settings
# [[ -s "$HOME/.bash_env_node" ]] && source "$HOME/.bash_env_node"

# Load Cloud9 Environment Settings
# [[ -s "$HOME/.bash_env_cloud9" ]] && source "$HOME/.bash_env_cloud9"

# Homepage for Web Browsers
export WWW_HOME=http://www.google.com/

# User specific aliases and functions
alias python=python27

# Coloring
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export PS1="\[$(tput bold)\]\[$(tput setaf 2)\][\[$(tput setaf 1)\]\u\[$(tput setaf 0)\]@\[$(tput setaf 1)\]\h \[$(tput setaf 2)\]\W\[$(tput setaf 2)\]]\\$ \[$(tput sgr0)\]"

####################################################
# Linux Only configuration
if [[ "$OSTYPE" == "linux-gnu" ]]; then
  uname -a
####################################################
# Mac Only configuration
elif [[ "$OSTYPE" == "darwin"* ]]; then

  export TERM="xterm-color"

  # Configure path to use Homebrew 'make' in addition to 'gmake`
  # PATH="/usr/local/opt/make/libexec/gnubin:$PATH"
  # export PATH

  # iTerm2 Shell Integration
  test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
fi
####################################################
