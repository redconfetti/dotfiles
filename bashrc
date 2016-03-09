# Load RVM
export PATH="$PATH:$HOME/.rvm/bin"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Use Sublime as Editor
export EDITOR="subl -n -w"

# Coloring
PS1='\[\e[1;32m\][\u@\h \W]\$\[\e[0m\] '

# Aliases
alias rspec="bundle exec rspec --format documentation"
alias flushmem="echo 'flush_all' | nc localhost 11211"
