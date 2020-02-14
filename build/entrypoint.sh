#!/bin/sh
echo '👍 ENTRYPOINT HAS STARTED—INSTALLING THE GEM BUNDLE'
gem update --system
bundle install
ruby -v
bundle -v
bundle list | grep "jekyll ("
echo '👍 BUNDLE INSTALLED—BUILDING THE SITE'
bundle exec jekyll build --trace
echo '👍 THE SITE IS BUILT—GREAT SUCCESS'

