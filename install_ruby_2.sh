#!/bin/bash
rbenv install 2.5.0
rbenv global 2.5.0
ruby -v
gem install bundler -v 1.16.6
rbenv rehash
#INSTALL RAILS
gem install rails -v 5.2.3
rbenv rehash
rails -v
