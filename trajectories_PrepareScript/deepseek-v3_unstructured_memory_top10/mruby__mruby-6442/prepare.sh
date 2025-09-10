ls -la
ls -la .github/workflows
open ".github/workflows/build.yml"
open "Gemfile"
ruby -v
apt-get update && apt-get install -y rbenv ruby-build
eval "$(rbenv init -)" && rbenv install 3.1.0 && rbenv global 3.1.0
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
rbenv install --list
rbenv install 3.1.0 && rbenv global 3.1.0
ruby -v
gem install bundler -v 2.3.27
bundle install
rake -m test:run:serial
