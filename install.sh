if ! hash brew 2>/dev/null; then
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew update
brew upgrade

apps=(
    bash-completion
    chromedriver
    homebrew/completions/docker-completion
    homebrew/completions/docker-compose-completion
    homebrew/completions/docker-machine-completion
    git
    git-number
    liquidprompt
    nvm
    thefuck
    tree
    yarn
)
# note: yarn will install node, which you might want to remove, since it is handled by nvm

brew install "${apps[@]}"

casks=(
    alfred
    atom
    bartender
    charles
    day-o
    firefox
    flux
    google-chrome
    google-drive
    google-photos-backup
    intellij-idea
    iterm2
    java
    keeweb
    keycue
    logitech-gaming-software
    slack
    sourcetree
    spectacle
    visual-studio-code
)

brew cask install "${casks[@]}"

defaults write com.apple.finder AppleShowAllFiles YES
