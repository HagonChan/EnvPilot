ls -la
open ".gitlab-ci.yml"
open "README.md"
open "doc/guides/compile.md"
apt-get update && apt-get install -y gcc make bison ruby git
make test
ruby ./minirake test
open "Rakefile"
ruby --version
gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB && \curl -sSL https://get.rvm.io | bash -s stable --ruby=1.9.3
apt-get install -y gnupg
gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB && \curl -sSL https://get.rvm.io | bash -s stable --ruby=1.9.3
apt-get install -y curl
gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB && \curl -sSL https://get.rvm.io | bash -s stable --ruby=1.9.3
apt-get install -y bzip2 gawk g++ autoconf automake libffi-dev libgdbm-dev libncurses5-dev libsqlite3-dev libtool libyaml-dev pkg-config sqlite3 zlib1g-dev libgmp-dev libreadline-dev
source /etc/profile.d/rvm.sh && rvm install 1.9.3
source /etc/profile.d/rvm.sh && rvm install 1.9.3 --disable-binary
make test
apt-get install -y jruby
open "Rakefile"
open "Makefile"
open "minirake"
ruby ./minirake test
goto 7

open "minirake"
search_file GetoptLong
search_file Rakefile
goto 446
edit 'tasks.each do |task_name|' 'tasks = ['"'"'test'"'"'] if tasks.empty? && ARGV.include?('"'"'test'"'"')
  tasks.each do |task_name|' True
ruby ./minirake test
edit 'tasks = []
      ARGV.each do |task_name|' 'tasks = ['"'"'test'"'"']
      # ARGV.each do |task_name|'
edit 'tasks = ['"'"'test'"'"']
      # ARGV.each do |task_name|
        if /^(\w+)=(.*)/.match(task_name)
          ENV[$1] = $2
        else
          tasks << task_name
        end
      end' 'tasks = ['"'"'test'"'"']'
ruby ./minirake test
open "Rakefile"
edit 'bin_path = ENV['"'"'INSTALL_DIR'"'"'] || "#{MRUBY_ROOT}/bin"' '# Ignore extra arguments
ARGV.clear if ARGV.size > 1
bin_path = ENV['"'"'INSTALL_DIR'"'"'] || "#{MRUBY_ROOT}/bin"'
ruby ./minirake test
edit '# Ignore extra arguments
ARGV.clear if ARGV.size > 1' '# Ignore all extra arguments
ARGV.clear'
ruby ./minirake test
open "minirake"
search_file ARGV.each
goto 7
search_file tasks.each
edit 'tasks.each do |task_name|' 'tasks = ['"'"'test'"'"']
  tasks.each do |task_name|' True
ruby ./minirake test
edit 'bin_path = ENV['"'"'INSTALL_DIR'"'"'] || "#{MRUBY_ROOT}/bin"' '# Ignore all extra arguments
ARGV.clear
bin_path = ENV['"'"'INSTALL_DIR'"'"'] || "#{MRUBY_ROOT}/bin"'
open "Rakefile"
goto 1
edit '# encoding: utf-8' '# encoding: utf-8
ARGV.clear'

