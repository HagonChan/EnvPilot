ls -la
open ".gitlab-ci.yml"
open "Makefile"
open "build_config.rb"
apt-get update && apt-get install -y ruby ruby-dev build-essential gcc-4.7 bison
apt-get install -y ruby ruby-dev build-essential gcc-4.7 bison
apt-get install -y gcc
gcc --version && ruby --version
apt-get update && apt-get install -y gcc
apt-get install -y gcc
gcc --version && ruby --version
apt-get install -y ruby ruby-dev
gcc --version && ruby --version
gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB && \curl -sSL https://get.rvm.io | bash -s stable --ruby=ruby-1.9.3-p551
apt-get install -y gnupg
gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB && \curl -sSL https://get.rvm.io | bash -s stable --ruby=ruby-1.9.3-p551
apt-get install -y curl
gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB && \curl -sSL https://get.rvm.io | bash -s stable --ruby=ruby-1.9.3-p551
gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB && \curl -sSL https://get.rvm.io | bash -s stable --ruby=ruby-1.9.3-p551 --autolibs=read-fail
apt-get install -y bzip2 gawk g++ autoconf automake bison libffi-dev libgdbm-dev libncurses5-dev libsqlite3-dev libtool libyaml-dev make pkg-config sqlite3 zlib1g-dev libreadline-dev libssl-dev
\curl -sSL https://get.rvm.io | bash -s stable --ruby=ruby-1.9.3-p551
apt-get install -y ruby-install
git clone https://github.com/postmodern/ruby-install.git && cd ruby-install && make install
ruby-install ruby 1.9.3-p551
cd /testbed && ls -la
./minirake test
open "Rakefile"
edit 'FileUtils.mkdir_p bin_path, { :verbose => $verbose }' 'FileUtils.mkdir_p bin_path, verbose: $verbose' True
edit 'FileUtils.rm_f t.name, { :verbose => $verbose }' 'FileUtils.rm_f t.name, verbose: $verbose' True
edit 'FileUtils.cp t.prerequisites.first, t.name, { :verbose => $verbose }' 'FileUtils.cp t.prerequisites.first, t.name, verbose: $verbose' True
edit 'FileUtils.rm_rf t.build_dir, { :verbose => $verbose }' 'FileUtils.rm_rf t.build_dir, verbose: $verbose' True
edit 'FileUtils.rm_f depfiles, { :verbose => $verbose }' 'FileUtils.rm_f depfiles, verbose: $verbose' True
edit 'FileUtils.rm_rf t.gem_clone_dir, { :verbose => $verbose }' 'FileUtils.rm_rf t.gem_clone_dir, verbose: $verbose' True
./minirake test
