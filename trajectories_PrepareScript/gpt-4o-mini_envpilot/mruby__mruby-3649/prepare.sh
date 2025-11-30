ls -la
open ".gitlab-ci.yml"
apt-get update
apt-get install -y gcc g++ make bison ruby git
./minirake all test
open "Rakefile"
edit 'FileUtils.mkdir_p bin_path, { :verbose => $verbose }' 'FileUtils.mkdir_p bin_path' False
./minirake all test
goto 45
edit 'file install_path => source_path do |t|' 'file install_path => source_path do |t, _|' False
./minirake all test
edit 'file install_path => source_path do |t, _|' 'file install_path => source_path do |t|' False
./minirake all test

