ls
open "README.md"
open "Rakefile"
open "tasks/test.rake"
open "Gemfile"
ls .github/workflows
open ".github/workflows/build.yml"
apt-get update && apt-get install -y gcc g++ clang clang++ make bison git
apt-get clean && apt-get update && apt-get install -y gcc g++ clang clang++ make bison git
apt-get install -y build-essential
apt-get install -y gcc g++ clang clang++ make bison git
apt-get install -y bison git
gcc --version && g++ --version && make --version && bison --version && git --version
ruby --version
gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB && \curl -sSL https://get.rvm.io | bash -s stable --ruby=3.0.0
apt-get install -y curl
gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB && \curl -sSL https://get.rvm.io | bash -s stable --ruby=3.0.0
cat /usr/local/rvm/log/1769870821_ruby-3.0.0/make.log
apt-cache search ruby | grep ^ruby-3
apt-get install -y rbenv
rbenv versions && rbenv global 3.0.2
ruby --version
gem install bundler && bundle install
rake all test
