ls -la
open ".travis.yml"
open "Gemfile"
apt-get update && apt-get install -y ruby ruby-dev build-essential
gem install bundler && bundle install
ruby --version && rake --version
rake -m test:run:serial
