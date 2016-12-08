ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update
brew upgrade

apps=(
    bash-completion
    chromedriver
    docker-completion
    docker-compose-completion
    docker-machine-completion
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
    gitx
    google-chrome
    google-drive
    google-photos-backup
    java
    keeweb
    keycue
    slack
    sourcetree
    spectacle
    visual-studio-code
)

brew cask install "${casks[@]}"
