ls -la
ls -la .github/workflows
open ".github/workflows/linux.yml"
apt-get update && apt-get install -y golang-1.20
export PATH=$PATH:/usr/lib/go-1.20/bin
go version
apt-get install -y git make zsh fish tmux
ruby --version
apt-get install -y ruby-full
ruby --version
ls -la
bundle install
gem install bundler
bundle install
go mod download
make lint
make test
ruby test/runner.rb
open "test/runner.rb"
cat test/runner.rb
edit 'Dir[File.join(__dir__, '"'"'test_*.rb'"'"')].each { require it }' 'Dir[File.join(__dir__, '"'"'test_*.rb'"'"')].each { |file| require file }'
sed -i 's/Dir\[File.join\(__dir__, \"test_\*.rb\"\)\].each { require it }/Dir[File.join(__dir__, \"test_*.rb\")].each { |file| require file }/' test/runner.rb
ruby test/runner.rb
cat test/runner.rb
sed -i 's/require it/require file/' test/runner.rb
cat test/runner.rb
ruby test/runner.rb
sed -i 's/require file/require |file| file/' test/runner.rb
cat test/runner.rb
echo "# frozen_string_literal: true

Dir[File.join(__dir__, 'test_*.rb')].each { |file| require file }

require 'minitest/autorun'" > test/runner.rb
cat test/runner.rb
ruby test/runner.rb
