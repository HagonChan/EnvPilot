ls -la
open "README.md"
open ".gitlab-ci.yml"
open ".travis.yml"
open "build_config.rb"
apt-get update && apt-get install -y gcc make bison ruby git gperf
make
open "Makefile"
open "Rakefile"
ruby --version
gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB && \curl -sSL https://get.rvm.io | bash -s stable --ruby=1.9.3
apt-get install -y gnupg
gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB && \curl -sSL https://get.rvm.io | bash -s stable --ruby=1.9.3
apt-get install -y curl
gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB && \curl -sSL https://get.rvm.io | bash -s stable --ruby=1.9.3
apt-get install -y bzip2 gawk g++ autoconf automake libffi-dev libgdbm-dev libncurses5-dev libsqlite3-dev libtool libyaml-dev pkg-config sqlite3 zlib1g-dev libgmp-dev libreadline-dev
source /etc/profile.d/rvm.sh && rvm install 1.9.3
apt-get install -y libssl-dev
source /etc/profile.d/rvm.sh && rvm install 1.9.3
wget https://cache.ruby-lang.org/pub/ruby/1.9/ruby-1.9.3-p551.tar.gz && tar xzf ruby-1.9.3-p551.tar.gz && cd ruby-1.9.3-p551 && ./configure && make && make install
apt-get install -y wget
wget https://cache.ruby-lang.org/pub/ruby/1.9/ruby-1.9.3-p551.tar.gz && tar xzf ruby-1.9.3-p551.tar.gz && cd ruby-1.9.3-p551 && ./configure && make && make install
ruby --version
cd /testbed && make
make test
