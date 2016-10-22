#! /usr/bin/sh

# First, buid dev env
sudo apt-get install git
git config --global user.email "jiangzhibin2014.xujie@gmail.com"
git config --global user.name "binking"
print 'Installed Git succeeded'

sudo apt-get install terminator
print 'Installed Terminator succeeded'
mv ~/.config/terminator/config ~/.config/terminator/config-backup
cp ./terminator-config ~/.config/terminator/
mv ~/.config/terminator/terminator-config ~/.config/terminator/config
print 'Load your customized terminator profiles DONE'
sudo apt-get install vim
print 'Installed Vim done'

# Better ubuntu
# Chrome
cd ~/Downloads/
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt-get install -f
print 'Chrome and its dependencies were installed succeeded'


# Build python dev env
sudo apt-get install python-pip
sudo install virtualenv
print 'Installed pip and virtualenv done'

sudo apt-get install python3-venv 
print 'Installed py3-venv done, you can use python3 -m venv'

# install zsh and oh-my-zsh, which should be last setting
sudo apt-get install zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
print 'Installed zsh and oh-my-zsh done'
