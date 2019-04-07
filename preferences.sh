#! /bin/bash

# Accessibility > Display > Check Reduce motion

# opening and closing windows and popovers
defaults write -g NSAutomaticWindowAnimationsEnabled -bool false

# Speed up Mission Control animation
defaults write com.apple.dock expose-animation-duration -float 0.0

# Opening and closing Quick Look windows
defaults write -g QLPanelAnimationDuration -float 0

# Showing the Dock
defaults write com.apple.dock autohide-time-modifier -float 0.3
defaults write com.apple.dock autohide-delay -float 0

# Increase window resize speed for Cocoa applications
defaults write NSGlobalDomain NSWindowResizeTime -float 0.001

# Disable window animations
defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool NO

# Kill all affected applications
killall Dock Finder SystemUIServer
