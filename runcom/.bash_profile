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

  if [ -f /usr/local/share/liquidprompt ]; then
    . /usr/local/share/liquidprompt
  fi

export HOMEBREW_GITHUB_API_TOKEN="9b5983737dd7162078fe7ad3ee5f16eff31f6942"

export EDITOR=/usr/local/bin/code

alias g=git
alias gn='git number --column'
alias ga='git number add'

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
