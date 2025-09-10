ls -la
ls -la .github/workflows
open ".github/workflows/build.yml"
open "Gemfile"
apt-get update && apt-get install -y gcc clang ruby make bison ruby-dev
bundle install
gem install bundler
bundle install
rake -m test:run:serial
