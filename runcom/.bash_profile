if [ -f ~/.profile ]; then
  source ~/.profile
fi

if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

if [ -f /usr/local/opt/nvm/nvm.sh ]; then
  export NVM_DIR="$HOME/.nvm"
  . "/usr/local/opt/nvm/nvm.sh"
fi

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

if [ -f /usr/local/share/liquidprompt ]; then
  . /usr/local/share/liquidprompt
fi

eval $(thefuck --alias)
alias f="fuck"

if [ -f ~/.secrets ]; then
  source ~/.secrets
fi

export EDITOR=/usr/local/bin/code
export PATH="$PATH:$(yarn global bin)"

# note that command line completion does not work well for this alias
alias g=git
alias gn='git number --column'
alias ga='git number add'

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
