# Developer on-boarding toolset

This repository is an ansible repository that will install the common tools for developers for an OSX machine.

To use, clone this repository and follow the `Requirements` and `Installing the tools` section.

For the adventurous, this is a one-liner that will run everything on a machine. If it ask for a password, 
type in the computer user's password.

```
curl -fsSL https://raw.githubusercontent.com/isen-ng/ansible-osx-setup/master/all-in-one.sh | bash
```

## Requirements

```
# install osx development cli tools
xcode-select --install

# accept xcode license
sudo xcodebuild -license accept

# install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install ansible 2.8
brew install ansible
```

## Installing the tools

```
# install git
brew install git

# clone this repository
git clone git@github.com:isen-ng/ansible-osx-setup.git

# run the playbook
# if it prompts for your password, type in your computer's password
ansible-playbook playbook_install_all.yml
```

## Tools installed

| common            | java   | dotnet         | devops                | productivity
|-------------------|--------|----------------|-----------------------|--------------
| git               | jenv   | dotnet-sdk 2.2 | tenv                  | gpg
| wget              | java8  | mono           | tgenv                 | git-secret
| google-chrome     | java11 |                | terraform 0.11.14     | sublime-text
| docker            |        |                | terragrunt 0.18.7     | keybase
| firefox           |        |                | awscli                | spectacle
| jetbrains-toolbox |        |                | aws-iam-authenticator | sourcetree
| postman           |        |                | aws-google-auth       | iterm2
| slack             |        |                | awsudo                |
|                   |        |                | kubectl               |
|                   |        |                | helm                  |
|                   |        |                | fluxctl               |
|                   |        |                | jq                    |

