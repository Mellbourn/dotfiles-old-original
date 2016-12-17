if [ -f ~/.profile ]; then
  source ~/.profile
fi

if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

if [ -f ~/.secrets ]; then
  source ~/.secrets
fi

### environment variables
export EDITOR=/usr/local/bin/code

### prompt
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

if [ -f /usr/local/share/liquidprompt ]; then
  . /usr/local/share/liquidprompt
fi

### version managers
if [ -f /usr/local/opt/nvm/nvm.sh ]; then
  export NVM_DIR="$HOME/.nvm"
  . "/usr/local/opt/nvm/nvm.sh"
fi

export PATH="$PATH:$(yarn global bin)"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

### aliases
eval $(thefuck --alias)
alias f="fuck"
# note that command line completion does not work well for this alias
alias g=git
alias gn='git number --column'
alias ga='git number add'
