# Load the default .profile
# Place your machine specific configurations in this file
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile"

# Load RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Load Bash Aliases
[[ -s "$HOME/.bash_aliases" ]] && source "$HOME/.bash_aliases"

# Load Java Environment Settings
[[ -s "$HOME/.bash_java_env" ]] && source "$HOME/.bash_java_env"

# Coloring
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export TERM="xterm-color"
# PS1='\[\e[1;32m\][\u@\h \W]\$\[\e[0m\] '
# PS1='\[\e[0;33m\]\u\[\e[0m\]@\[\e[0;32m\]\h\[\e[0m\]:\[\e[0;34m\]\w\[\e[0m\]\$ '
export PS1="\[$(tput bold)\]\[$(tput setaf 2)\][\[$(tput setaf 1)\]\u\[$(tput setaf 0)\]@\[$(tput setaf 1)\]\h \[$(tput setaf 2)\]\W\[$(tput setaf 2)\]]\\$ \[$(tput sgr0)\]"

# iTerm2 Shell Integration
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# Ulimit
# ulimit -n 65536 65536

# User specific environment and startup programs
PATH=$HOME/bin:$PATH
export PATH

# Docker Machine
# if [ -x /usr/local/bin/docker-machine ]; then
#   eval $(docker-machine env default)
# fi
