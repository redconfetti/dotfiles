# Load the default .profile
# Place your machine specific configurations in this file
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile"

# Load RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Coloring
PS1='\[\e[1;32m\][\u@\h \W]\$\[\e[0m\] '

# Use Sublime as Editor
export EDITOR="subl -n -w"

# Aliases
alias rspec="bundle exec rspec --format documentation"
alias flushmem="echo 'flush_all' | nc localhost 11211"
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# iTerm2 Shell Integration
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# Ulimit
# ulimit -n 65536 65536

# User specific environment and startup programs
PATH=$HOME/bin:$PATH
export PATH

# Docker Machine
if [ -x /usr/local/bin/docker-machine ]; then
  eval $(docker-machine env default)
fi
