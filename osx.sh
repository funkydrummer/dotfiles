#!/usr/bin/env sh

# echo "Set a blazingly fast keyboard repeat rate"
# defaults write NSGlobalDomain KeyRepeat -int 0.02
 
# echo "Set a shorter Delay until key repeat"
# defaults write NSGlobalDomain InitialKeyRepeat -int 12

# echo "Allow quitting Finder via ⌘ + Q; doing so will also hide desktop icons"
# defaults write com.apple.finder QuitMenuItem -bool false

defaults delete NSGlobalDomain KeyRepeat
defaults delete NSGlobalDomain InitialKeyRepeat
