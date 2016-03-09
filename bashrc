# Load RVM
export PATH="$PATH:$HOME/.rvm/bin"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Use Sublime as Editor
export EDITOR="subl -n -w"

# Aliases
alias rspec="bundle exec rspec --format documentation"
alias flushmem="echo 'flush_all' | nc localhost 11211"
