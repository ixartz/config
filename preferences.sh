#! /bin/bash

# Accessibility > Display > Check Reduce motion

# Opening and closing windows and popovers
defaults write -g NSAutomaticWindowAnimationsEnabled -bool false

# Launching an app from the Dock
defaults write com.apple.dock launchanim -bool false

# Speed up Mission Control animation
defaults write com.apple.dock expose-animation-duration -float 0.0

# Launchpad’s show and hide durations can be set independently. To set both to minimal delay, use these defaults write commands:
defaults write com.apple.dock springboard-show-duration -int 0
defaults write com.apple.dock springboard-hide-duration -float 0
defaults write com.apple.dock springboard-page-duration -float 0

# Opening and closing Quick Look windows
defaults write -g QLPanelAnimationDuration -float 0

# Showing the Dock
defaults write com.apple.dock autohide-time-modifier -float 0.3
defaults write com.apple.dock autohide-delay -float 0

# Increase window resize speed for Cocoa applications
defaults write NSGlobalDomain NSWindowResizeTime -float 0.001

# Showing a toolbar or menu bar in full screen
defaults write -g NSToolbarFullScreenAnimationDuration -float 0

# Disable all window animations and the animation when opening the info window in Finder
defaults write com.apple.finder DisableAllAnimations -bool true

# Kill all affected applications
killall Dock Finder SystemUIServer
