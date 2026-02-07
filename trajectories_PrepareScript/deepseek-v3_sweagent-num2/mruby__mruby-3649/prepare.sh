ls -la
open ".gitlab-ci.yml"
open "README.md"
open "Makefile"
apt-get update && apt-get install -y gcc-4.7 g++-4.7
gcc --version
apt-get install -y gcc g++
gcc --version && g++ --version
./minirake all test
apt-get install -y ruby
ruby --version
./minirake all test
open "Rakefile" 38
edit 'FileUtils.mkdir_p bin_path, { :verbose => $verbose }' 'FileUtils.mkdir_p bin_path, verbose: $verbose'
./minirake all test
apt-get install -y bison
./minirake all test
edit 'FileUtils.rm_f t.name, { :verbose => $verbose }' 'FileUtils.rm_f t.name, verbose: $verbose'
edit 'FileUtils.rm_f t.name, { :verbose => $verbose }' 'FileUtils.rm_f t.name, verbose: $verbose' True
./minirake all test
edit 'FileUtils.cp t.prerequisites.first, t.name, { :verbose => $verbose }' 'FileUtils.cp t.prerequisites.first, t.name, verbose: $verbose' True
./minirake all test
