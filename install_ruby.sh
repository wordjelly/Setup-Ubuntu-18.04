#!/bin/bash
# MAKE SURE THAT YOU ARE NOT THE ROOT USER WHILE DOING THIS OTHERWISE NON-ROOT USERS WILL NOT BE ABLE TO USE RUBY
#this should be done for every user seperately
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
## AFTER DOING THIS REBOOT THE SHELL.
### DONT PROCEED WITHOUT DOING THAT -> OTHERWISE RBENV WILL NOT START.
