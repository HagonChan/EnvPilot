ls -la
open ".gitlab-ci.yml"
open "README.md"
open "Makefile"
open "doc/guides/compile.md"
apt-get update && apt-get install -y gcc make bison ruby ruby-dev
./minirake all test
open "Rakefile"
make test
open "build_config.rb"
make
open "minirake"
ruby -Ilib test/test_*.rb
find_file 'test_*.rb'
open "Rakefile"
open "tasks/mruby_build.rake"
open "tasks/mrbgems.rake"
open "tasks/mruby_build_commands.rake"
make
open "minirake"
ruby -Ilib test/test_*.rb
find_file 'test_*.rb'
make test
open "minirake" 38
open "Rakefile" 38
ls -la bin/
make V=1
open "minirake" 1
ruby -Ilib test/test_*.rb
open "minirake" 1
ruby -Ilib test/test_*.rb
open "minirake" 1
ruby -Ilib test/test_*.rb
open "minirake" 1
ruby -Ilib test/test_*.rb
open "minirake" 1
ruby -Ilib test/test_*.rb
open "minirake" 1
ruby -Ilib test/test_*.rb
open "minirake" 1
ruby -Ilib test/test_*.rb
open "minirake" 1
ruby -Ilib test/test_*.rb
open "minirake" 1
ruby -Ilib test/test_*.rb
open "minirake" 1
ruby -Ilib test/test_*.rb
open "minirake" 1
ruby -Ilib test/test_*.rb

