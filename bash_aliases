# User specific aliases and functions
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Memcached
alias flushmem="echo 'flush_all' | nc localhost 11211"
alias statsmem="echo 'stats' | nc 127.0.0.1 11211"

if [ -x /usr/local/bin/git ]; then
  alias gg='git log --oneline --abbrev-commit --all --graph --decorate --color'
fi

if [ -x ~/.rbenv/shims/bundle ]; then
  alias be='bundle exec'
fi

# exa
if [ -x /usr/local/bin/exa ]; then
  alias ls='exa -gbH --header --git'
fi

# bat
if [ -x /usr/local/bin/bat ]; then
  alias cat='bat'
fi
