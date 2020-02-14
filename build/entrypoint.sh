#!/bin/sh
echo '👍 ENTRYPOINT HAS STARTED—INSTALLING THE GEM BUNDLE'
ruby -v
bundle -v
gem update --system
bundle update --bundler
bundle install
bundle list | grep "jekyll ("
echo '👍 BUNDLE INSTALLED—BUILDING THE SITE'
bundle exec jekyll build
echo '👍 THE SITE IS BUILT—GREAT SUCCESS'

