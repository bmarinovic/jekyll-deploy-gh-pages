#!/bin/sh
echo '👍 ENTRYPOINT HAS STARTED—INSTALLING THE GEM BUNDLE'
gem install bundler
bundle update --bundler
gem update --system
bundle install
bundle list | grep "jekyll ("
echo '👍 BUNDLE INSTALLED—BUILDING THE SITE'
bundle exec jekyll build --trace
echo '👍 THE SITE IS BUILT—GREAT SUCCESS'

