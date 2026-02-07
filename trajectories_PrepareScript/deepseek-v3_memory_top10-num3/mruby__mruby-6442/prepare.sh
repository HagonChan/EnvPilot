ls -la
open ".travis.yml"
open "Gemfile"
open "Makefile"
apt-get update && apt-get install -y ruby ruby-dev build-essential bison git gcc clang g++ clang++
ruby --version && gem install bundler && bundle install
apt-get install -y ruby ruby-dev
ruby --version && gem install bundler && bundle install
rake test
apt-get install -y gcc
rake test
