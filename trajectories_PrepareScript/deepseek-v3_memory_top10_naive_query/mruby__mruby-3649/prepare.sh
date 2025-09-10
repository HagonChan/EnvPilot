ls -la
open ".gitlab-ci.yml"
open "Makefile"
open "README.md"
open "doc/guides/compile.md"
apt-get update && apt-get install -y gcc make bison ruby
./minirake
open "Rakefile"
rake
apt-get install -y ruby1.9.3
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
apt-get install -y gnupg
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
gpg --keyserver hkp://pgp.mit.edu --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
\curl -sSL https://get.rvm.io | bash -s stable
apt-get install -y curl
\curl -sSL https://get.rvm.io | bash -s stable
source /etc/profile.d/rvm.sh
rvm install ruby-1.9.3
apt-get install -y bzip2 gawk g++ autoconf automake libffi-dev libgdbm-dev libncurses5-dev libsqlite3-dev libtool libyaml-dev pkg-config sqlite3 zlib1g-dev libgmp-dev libreadline-dev libssl1.0-dev
apt-get install -y bzip2 gawk g++ autoconf automake libffi-dev libgdbm-dev libncurses5-dev libsqlite3-dev libtool libyaml-dev pkg-config sqlite3 zlib1g-dev libgmp-dev libreadline-dev libssl-dev
rvm install ruby-1.9.3
rvm install ruby
rvm install ruby-2.7.0
ruby --version
gem install rake
rake
open "Rakefile" 38
edit 'FileUtils.mkdir_p bin_path, { :verbose => $verbose }' 'FileUtils.mkdir_p bin_path'
rake
edit 'FileUtils.rm_f t.name, { :verbose => $verbose }' 'FileUtils.rm_f t.name'
edit 'file install_path => exec do |t|
          FileUtils.rm_f t.name, { :verbose => $verbose }
          FileUtils.cp t.prerequisites.first, t.name, { :verbose => $verbose }
        end' 'file install_path => exec do |t|
          FileUtils.rm_f t.name
          FileUtils.cp t.prerequisites.first, t.name, { :verbose => $verbose }
        end'
edit 'file install_path => exec do |t|
            FileUtils.rm_f t.name, { :verbose => $verbose }
            FileUtils.cp t.prerequisites.first, t.name, { :verbose => $verbose }
          end' 'file install_path => exec do |t|
            FileUtils.rm_f t.name
            FileUtils.cp t.prerequisites.first, t.name, { :verbose => $verbose }
          end'
edit 'FileUtils.rm_rf t.build_dir, { :verbose => $verbose }' 'FileUtils.rm_rf t.build_dir'
edit 'FileUtils.rm_rf t.gem_clone_dir, { :verbose => $verbose }' 'FileUtils.rm_rf t.gem_clone_dir'
edit 'FileUtils.rm_f depfiles, { :verbose => $verbose }' 'FileUtils.rm_f depfiles'
edit 'FileUtils.cp t.prerequisites.first, t.name, { :verbose => $verbose }' 'FileUtils.cp t.prerequisites.first, t.name'
edit 'file install_path => exec do |t|
          FileUtils.rm_f t.name
          FileUtils.cp t.prerequisites.first, t.name, { :verbose => $verbose }
        end' 'file install_path => exec do |t|
          FileUtils.rm_f t.name
          FileUtils.cp t.prerequisites.first, t.name
        end'
edit 'file install_path => exec do |t|
            FileUtils.rm_f t.name
            FileUtils.cp t.prerequisites.first, t.name, { :verbose => $verbose }
          end' 'file install_path => exec do |t|
            FileUtils.rm_f t.name
            FileUtils.cp t.prerequisites.first, t.name
          end'
rake
open "Rakefile" 45
edit 'FileUtils.rm_f t.name, { :verbose => $verbose }' 'FileUtils.rm_f t.name'
edit 'FileUtils.cp t.prerequisites.first, t.name, { :verbose => $verbose }' 'FileUtils.cp t.prerequisites.first, t.name'
rake
rake test
