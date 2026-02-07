ls -la
ls -la .github/workflows
open ".github/workflows/build.yml"
open "README.md"
open "Makefile"
open "Gemfile"
bundle install
gem install bundler
apt-get update && apt-get install -y ruby ruby-dev
gem install bundler
bundle install
rake all test
apt-get install -y gcc make
rake all test
