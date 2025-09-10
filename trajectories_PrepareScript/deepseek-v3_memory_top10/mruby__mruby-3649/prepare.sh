ls -la
open ".gitlab-ci.yml"
open "Makefile"
open "README.md"
open "doc/guides/compile.md"
apt-get update && apt-get install -y gcc g++ make bison ruby libssl-dev libyaml-dev
./minirake all test
open "Rakefile"
./minirake
ruby --version
apt-get install -y ruby2.7
gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
apt-get install -y gnupg
gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
\curl -sSL https://get.rvm.io | bash -s stable
apt-get install -y curl
\curl -sSL https://get.rvm.io | bash -s stable
source /etc/profile.d/rvm.sh && rvm install ruby-2.7.8
cat /usr/local/rvm/log/1752430728_ruby-2.7.8/install.log
apt-get install -y libssl-dev
rvm install ruby-2.7.8 --disable-openssl
rvm reinstall ruby-2.7.8 --disable-openssl
ruby --version
./minirake test
edit 'FileUtils.mkdir_p(dir, options)' 'FileUtils.mkdir_p(dir, **options)' True
search_file FileUtils.mkdir_p Rakefile
edit 'FileUtils.mkdir_p bin_path, { :verbose => $verbose }' 'FileUtils.mkdir_p bin_path, verbose: $verbose' False
./minirake test
edit 'FileUtils.rm_f t.name, { :verbose => $verbose }' 'FileUtils.rm_f t.name, verbose: $verbose' False
edit 'FileUtils.cp t.prerequisites.first, t.name, { :verbose => $verbose }' 'FileUtils.cp t.prerequisites.first, t.name, verbose: $verbose' True
./minirake test
