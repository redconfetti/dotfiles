# User specific aliases and functions

alias rspec="bundle exec rspec --format documentation"
alias flushmem="echo 'flush_all' | nc localhost 11211"
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias be='bundle exec'
alias rspec="bundle exec rspec --format documentation"
alias flushmem="echo 'flush_all' | nc localhost 11211"
alias statsmem="echo 'stats' | nc 127.0.0.1 11211"
alias gemdir='cd $(rvm gemset gemdir)'
alias tbr="bundle exec torquebox run -p=3000"
alias python=python27