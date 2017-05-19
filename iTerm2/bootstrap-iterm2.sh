#!/usr/bin/env bash

# Make iTerm understand italics
tic ~/.yadr/iTerm2/xterm-256color.terminfo

# Copy plist file from here to the proper location
mv ~/Library/Preferences/com.googlecode.iterm2.plist ~/Library/Preferences/com.googlecode.iterm2.plist.backup
ln -nfs ~/.yadr/iTerm2/com.googlecode.iterm2.plist ~/Library/Preferences/

# Add shortcut to Dock
defaults write com.apple.dock persistent-apps -array-add "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/iTerm.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>"

# reset the preferences cache
killall cfprefsd
