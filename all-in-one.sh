#!/usr/bin/env bash

set -e

echo "This will install all the tools listed in this repository."
echo "If the prompt comes up for a password, type in this computer user's password."
read -p "Press enter to continue or control+c to quit ..."

# install osx development cli tools
echo "Installing xcode development cli tools ..."
xcode-select --install | true

# accept xcode license
echo "Accept xcode development license ..."
sudo xcodebuild -license accept

# install homebrew
echo "Installing homebrew ..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install ansible
echo "Installing ansible and git ..."
brew install ansible git

cd /tmp

# clone this repository
echo "Cloning the repository ..."
git clone git@github.com:isen-ng/ansible-osx-setup.git

# run the playbook
# if it prompts for your password, type in your computer's password
echo "Running playbook to install all tools ..."
(cd ansible-osx-setup && ansible-playbook playbook_install_all.yml)

echo "Removing downloaded artifacts"
rm -rf ansible-osx-setup

cd -