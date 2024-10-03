#!/usr/bin/env zsh

cp citylights.icns /Applications/WezTerm.app/Contents/Resources/terminal.icns
rm /var/folders/*/*/*/com.apple.dock.iconcache || true
rm -r /var/folders/*/*/*/com.apple.iconservices* || true
killall Dock
