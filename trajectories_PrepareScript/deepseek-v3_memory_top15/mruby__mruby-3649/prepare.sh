ls -la
open ".gitlab-ci.yml"
open "README.md"
open "Makefile"
apt-get update && apt-get install -y gcc-4.7 g++-4.7 build-essential bison
apt-get update && apt-get install -y gcc g++ build-essential bison
ruby --version
apt-get install -y ruby1.9.3
apt-get install -y ruby
ruby --version
which minirake
make
open "Rakefile"
edit 'FileUtils.mkdir_p bin_path, { :verbose => $verbose }' 'FileUtils.mkdir_p bin_path, verbose: $verbose'
make
edit 'FileUtils.rm_f t.name, { :verbose => $verbose }' 'FileUtils.rm_f t.name, verbose: $verbose'
edit 'file install_path => exec do |t|
          FileUtils.rm_f t.name, { :verbose => $verbose }
          FileUtils.cp t.prerequisites.first, t.name, { :verbose => $verbose }
        end' 'file install_path => exec do |t|
          FileUtils.rm_f t.name, verbose: $verbose
          FileUtils.cp t.prerequisites.first, t.name, verbose: $verbose
        end'
edit 'file install_path => exec do |t|
            FileUtils.rm_f t.name, { :verbose => $verbose }
            FileUtils.cp t.prerequisites.first, t.name, { :verbose => $verbose }
          end' 'file install_path => exec do |t|
            FileUtils.rm_f t.name, verbose: $verbose
            FileUtils.cp t.prerequisites.first, t.name, verbose: $verbose
          end'
make
search_file '{ :verbose => $verbose }' Rakefile
edit 'FileUtils.rm_f t.name, { :verbose => $verbose }' 'FileUtils.rm_f t.name, verbose: $verbose'
goto 45
edit 'FileUtils.rm_f t.name, { :verbose => $verbose }
    FileUtils.cp t.prerequisites.first, t.name, { :verbose => $verbose }' 'FileUtils.rm_f t.name, verbose: $verbose
    FileUtils.cp t.prerequisites.first, t.name, verbose: $verbose'
edit 'FileUtils.rm_rf t.build_dir, { :verbose => $verbose }' 'FileUtils.rm_rf t.build_dir, verbose: $verbose'
goto 128
edit 'FileUtils.rm_rf t.build_dir, { :verbose => $verbose }' 'FileUtils.rm_rf t.build_dir, verbose: $verbose'
edit 'FileUtils.rm_f depfiles, { :verbose => $verbose }' 'FileUtils.rm_f depfiles, verbose: $verbose'
edit 'FileUtils.rm_rf t.gem_clone_dir, { :verbose => $verbose }' 'FileUtils.rm_rf t.gem_clone_dir, verbose: $verbose'
make
ruby ./minirake test
