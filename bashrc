# .bashrc

# Alias definitions.
if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

# set PATH so it includes user's .local/bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
  PATH="$PATH:$HOME/.local/bin"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
  PATH="$PATH:$HOME/bin"
fi

# Load RVM
export PATH="$PATH:$HOME/.rvm/bin"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Use VSCode as Editor
# export EDITOR="code --wait"

# Homepage for Web Browsers
export WWW_HOME=http://www.google.com/

# load nvm
export NVM_DIR="$HOME/.nvm"
[ "$BASH_VERSION" ] && npm() { 
  # hack: avoid slow npm sanity check in nvm
  if [ "$*" == "config get prefix" ]; then which node | sed "s/bin\/node//"; 
  else $(which npm) "$@"; fi 
}
# [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
rvm_silence_path_mismatch_check_flag=1 # prevent rvm complaints that nvm is first in PATH
unset npm # end hack

# User specific aliases and functions
alias python=python27

# modifications needed only in interactive mode
if [ "$PS1" != "" ]; then
  # Set default editor for git
  git config --global core.editor /usr/bin/vim

  # Turn on checkwinsize
  shopt -s checkwinsize

  # keep more history
  shopt -s histappend
  export HISTSIZE=100000
  export HISTFILESIZE=100000
  export PROMPT_COMMAND="history -a;"

  # Source for Git PS1 function
  if ! type -t __git_ps1 && [ -e "/usr/share/git-core/contrib/completion/git-prompt.sh" ]; then
    . /usr/share/git-core/contrib/completion/git-prompt.sh
  fi

  # Cloud9 default prompt
  _cloud9_prompt_user() {
    if [ "$C9_USER" = root ]; then
      echo "$USER"
    else
      echo "$C9_USER"
    fi
  }

  # enable color support of ls and also add handy aliases
  if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
  fi

  PS1='\[\033[01;32m\]$(_cloud9_prompt_user)\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]$(__git_ps1 " (%s)" 2>/dev/null) $ '
fi
