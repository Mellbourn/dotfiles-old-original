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
    virtualbox
    vlc
    webstorm
)

brew cask install "${casks[@]}"

defaults write com.apple.finder AppleShowAllFiles YES
# sets the first window shown in finder to home
defaults write com.apple.finder NewWindowTarget PfHm
# Show Path bar in Finder
defaults write com.apple.finder ShowPathbar -bool true
# Save screenshots to Pictures
defaults write com.apple.screencapture location "${HOME}/Pictures"