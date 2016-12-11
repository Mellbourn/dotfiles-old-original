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
    tree
)

brew install "${apps[@]}"

casks=(
    atom
    bartender
    charles
    day-o
    flux
    google-chrome
    google-drive
    google-photos-backup
    intellij-idea
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