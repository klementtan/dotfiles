#!/bin/sh

echo "Installing xcode"
xcode-select —-install
echo "Installing homebrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
echo "Brew installing"
xargs brew install < brews.txt
