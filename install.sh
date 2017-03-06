###############################################################################
# Klas Mellbourn's dotfile
#
# https://github.com/Mellbourn/dotfiles
# https://dotfiles.github.io/
# 
# Many settings inspired by
# https://github.com/mathiasbynens/dotfiles/blob/master/.macos
#
# Nice links here
# https://medium.com/@webprolific/getting-started-with-dotfiles-43c3602fd789#.2d3cfjv7d
###############################################################################

###############################################################################
# Homebrew                                                                      #
###############################################################################

if ! hash brew 2>/dev/null; then
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew tap git-time-metric/gtm
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
    gtm
    liquidprompt
    mas
    nvm
    thefuck
    tree
    yarn
)
# note: yarn will install node, which you might want to remove, since it is handled by nvm

brew install "${apps[@]}"

casks=(
    adobe-reader
    alfred
    atom
    bartender
    charles
    day-o
    firefox
    flux
    flycut
    google-chrome
    google-drive
    google-photos-backup
    intellij-idea
    iterm2
    java
    keeweb
    keycue
    logitech-gaming-software
    plex-media-player
    rowanj-gitx
    slack
    sourcetree
    skype
    spectacle
    tripmode
    visual-studio-code
    virtualbox
    vlc
    webstorm
)

brew cask install "${casks[@]}"

# automate mac store installation
mas signin klas@mellbourn.net 

###############################################################################
# Finder                                                                      #
###############################################################################
defaults write com.apple.finder AppleShowAllFiles YES
# sets the first window shown in finder to home
defaults write com.apple.finder NewWindowTarget PfHm
# Finder: show status bar
defaults write com.apple.finder ShowStatusBar -bool true
# Show Path bar in Finder
defaults write com.apple.finder ShowPathbar -bool true
# Use list view in all Finder windows by default, NOT STABLE?
#defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"
# hide all icons on from desktop
defaults write com.apple.finder CreateDesktop false

###############################################################################
# Miscellaneous                                                               #
###############################################################################
# Save screenshots to Pictures
defaults write com.apple.screencapture location "${HOME}/Pictures"
# Trackpad: enable tap to click for this user and for the login screen - don't work!
#defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
#defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
#defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

###############################################################################
# Keyboard                                                                    #
###############################################################################
# THESE SEEM DANGEROUS, NOT CONSISTENT, destroys key repeat in Chrome?
# Set a blazingly fast keyboard repeat rate
defaults write NSGlobalDomain KeyRepeat -int 1
defaults write NSGlobalDomain InitialKeyRepeat -int 25

###############################################################################
# Dock                                                                        #
###############################################################################
# Set the icon size of Dock items to 24 pixels
defaults write com.apple.dock tilesize -int 24

###############################################################################
# Safari & WebKit                                                             #
###############################################################################

# Show the full URL in the address bar (note: this still hides the scheme)
defaults write com.apple.Safari ShowFullURLInSmartSearchField -bool true
# Set Safari’s home page to `about:blank` for faster loading
defaults write com.apple.Safari HomePage -string "about:blank"
# Enable the Develop menu and the Web Inspector in Safari
defaults write com.apple.Safari IncludeDevelopMenu -bool true
# Enable Safari’s debug menu
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true
# Update extensions automatically
defaults write com.apple.Safari InstallExtensionUpdatesAutomatically -bool true


# set TextEdit default format to plain text
defaults write com.apple.TextEdit RichText -int 0
