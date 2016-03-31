# Load the default .profile
# Place your machine specific configurations in this file
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile"

# Load RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Functions
function rubymine() { /Applications/RubyMine.app/Contents/MacOS/rubymine $(pwd) --line 0 "$1"; }

# Coloring
PS1='\[\e[1;32m\][\u@\h \W]\$\[\e[0m\] '