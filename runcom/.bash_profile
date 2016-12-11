source ~/.profile

if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

#if [ -f "$(brew --prefix bash-git-prompt)/share/gitprompt.sh" ]; then
#    GIT_PROMPT_THEME=Default
#    source "$(brew --prefix bash-git-prompt)/share/gitprompt.sh"
#  fi
alias g=git

  if [ -f /usr/local/share/liquidprompt ]; then
    . /usr/local/share/liquidprompt
  fi

source ~/.secrets

export EDITOR=/usr/local/bin/code
export PATH="$PATH:$(yarn global bin)"

# note that command line completion does not work well for this alias
alias g=git
alias gn='git number --column'
alias ga='git number add'

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
