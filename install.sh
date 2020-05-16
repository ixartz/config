#! /bin/bash

# Enable trim

# Check filevault is enabled, it should be enabled by default when the partition is encrypted

# Change /etc/paths order and put Homebrew first

# Setting up OS X Preferences
sh preferences.sh

# Setting up Spetacle preferences
rm ~/Library/Application\ Support/Spectacle/Shortcuts.json

cp ~/config/applications/Shortcuts.json ~/Library/Application\ Support/Spectacle/

# Install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install Oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install powerline font
git clone https://github.com/powerline/fonts.git
# Install meslo LG M Regular for Powerline 12pt

# Install diff-so-fancy
git clone https://github.com/so-fancy/diff-so-fancy.git

# Setting up Vim preferences
git clone https://github.com/ixartz/vim-airline ~/.vim/pack/dist/start/vim-airline

# Installation...
cp -r install/ ~

# Rmtrash installation
brew install rmtrash

# Tldr installation
brew install tldr

# Zsh-completions installation
brew install zsh-completions

# Nvm installation
brew install nvm
# Do not install node

# Ruby installation
brew install rbenv ruby-build

# Scm breeze installation
git clone git://github.com/scmbreeze/scm_breeze.git ~/.scm_breeze
~/.scm_breeze/install.sh
# Configure .git.scmbrc for indexing repositories
c --rebuild

# Setting up Sublime Text 3 preferences
rm ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Default\ \(OSX\).sublime-keymap
rm ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Package\ Control.sublime-settings
rm ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings

ln -s ~/config/sublime-text/Default\ \(OSX\).sublime-keymap ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Default\ \(OSX\).sublime-keymap
ln -s ~/config/sublime-text/Package\ Control.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Package\ Control.sublime-settings
ln -s ~/config/sublime-text/Preferences.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings

# Setting up Atom preferences
ln -s ~/config/atom/* ~/.atom/

apm install --packages-file atom_packages.txt

# Setting up Vscode preferences
# Use CodeSync VS Code extension and import all

# Install manually com.googlecode.iterm2.plist in Preferences

# Shortcut Mac
# Move left a space: ctrl + option + <-
# Move right a space: ctrl + option + ->
# Change input language: cmd + §

# Install the following application: Google Chrome, Firefox, Opera,  Xcode, iTerm, Spectacle
# Optional: FileZilla, VirtualBox, Skype, VLC, Battle.net, Steam, Archive utility, Android File Transfert, Spotify, Microsoft office, VMware

# brew cask install: notion, docker, postman
