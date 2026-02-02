ls -la
open ".travis.yml"
open "Gemfile"
open "Rakefile"
open "tasks/test.rake"
apt-get update && apt-get install -y gcc clang ruby ruby-dev make bison git
gem install bundler && bundle install
rake -m test:run:serial
