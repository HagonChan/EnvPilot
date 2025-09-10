ls -la
open "README.md"
open "Makefile"
open ".gitlab-ci.yml"
open ".travis.yml"
apt-get update && apt-get install -y gcc make bison gperf
./minirake all test
apt-get install -y ruby1.9.3
apt-get install -y ruby
ruby --version
./minirake all test
open "Rakefile"
edit 'FileUtils.mkdir_p bin_path, { :verbose => $verbose }' 'FileUtils.mkdir_p bin_path, verbose: $verbose'
edit 'FileUtils.rm_f t.name, { :verbose => $verbose }' 'FileUtils.rm_f t.name, verbose: $verbose' True
edit 'FileUtils.cp t.prerequisites.first, t.name, { :verbose => $verbose }' 'FileUtils.cp t.prerequisites.first, t.name, verbose: $verbose' True
edit 'FileUtils.rm_rf t.build_dir, { :verbose => $verbose }' 'FileUtils.rm_rf t.build_dir, verbose: $verbose'
edit 'FileUtils.rm_f depfiles, { :verbose => $verbose }' 'FileUtils.rm_f depfiles, verbose: $verbose'
edit 'FileUtils.rm_rf t.gem_clone_dir, { :verbose => $verbose }' 'FileUtils.rm_rf t.gem_clone_dir, verbose: $verbose'
./minirake all test
