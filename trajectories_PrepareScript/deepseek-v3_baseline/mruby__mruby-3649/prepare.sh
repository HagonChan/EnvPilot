ls -la
open ".gitlab-ci.yml"
open "Makefile"
open "README.md"
open "doc/guides/compile.md"
sudo apt-get update && sudo apt-get install -y gcc make bison ruby
apt-get update && apt-get install -y gcc make bison ruby
./minirake test
open "Rakefile"
rake --version && ruby --version
apt-get install -y ruby1.9.3
gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
goto 38
edit 'FileUtils.mkdir_p bin_path, { :verbose => $verbose }' 'FileUtils.mkdir_p bin_path'
./minirake test
goto 45
edit 'FileUtils.rm_f t.name, { :verbose => $verbose }' 'FileUtils.rm_f t.name'
edit 'file install_path => source_path do |t|
    FileUtils.rm_f t.name, { :verbose => $verbose }' 'file install_path => source_path do |t|
    FileUtils.rm_f t.name'
edit 'FileUtils.rm_f t.name, { :verbose => $verbose }' 'FileUtils.rm_f t.name' True
edit 'FileUtils.cp t.prerequisites.first, t.name, { :verbose => $verbose }' 'FileUtils.cp t.prerequisites.first, t.name' True
edit 'FileUtils.rm_rf t.build_dir, { :verbose => $verbose }' 'FileUtils.rm_rf t.build_dir' True
edit 'FileUtils.rm_f depfiles, { :verbose => $verbose }' 'FileUtils.rm_f depfiles'
edit 'FileUtils.rm_rf t.gem_clone_dir, { :verbose => $verbose }' 'FileUtils.rm_rf t.gem_clone_dir'
./minirake test
