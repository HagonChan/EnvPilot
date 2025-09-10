ls -la
open ".travis.yml"
open "Gemfile"
apt-get update && apt-get install -y ruby ruby-dev build-essential
bundle install
gem install bundler
bundle install
open "Rakefile"
open "tasks/test.rake"
rake -m test:run:serial
