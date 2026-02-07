ls -la
open ".gitlab-ci.yml"
open "Makefile"
open "README.md"
open "doc/guides/compile.md"
sudo apt-get update && sudo apt-get install -y gcc bison ruby
apt-get update && apt-get install -y gcc bison ruby
./minirake test
open "Rakefile"
gem install rake -v 13.0.6
./minirake test
find_file 'test_*.rb'
ruby ./minirake test
make test
which make
apt-get install -y make
make test
find_file '*test*.rb'
ruby test/bintest.rb
open "README.md"
ruby ./minirake
