#!/usr/bin/env bash

#echo "Install Xcode"
xcode-select --install

#echo "Install HomeBrew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#echo "Install Zsh..."
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

#echo "Install Powerline"
git clone git@github.com:powerline/fonts.git && ./install.sh

echo "Install Some Basic Dev Softs"

# nginx
brew install nginx
ln -sfv /usr/local/opt/nginx/*.plist ~/Library/LaunchAgents
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.nginx.plist

# mysql
brew install mysql
ln -sfv /usr/local/opt/mysql/*.plist ~/Library/LaunchAgents
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.mysql.plist

# redis
brew install redis
ln -sfv /usr/local/opt/redis/*.plist ~/Library/LaunchAgents
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.redis.plist

# jdk7
brew install Caskroom/versions/java7

# maven
brew install maven

# ansible
brew install ansible