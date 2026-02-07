ls -la
open ".gitlab-ci.yml"
open "README.md"
open "Makefile"
apt-get update && apt-get install -y git build-essential bison ruby ruby-dev
make test
ruby ./minirake test
open "Rakefile"
open "minirake"
edit 'FileUtils.mkdir_p bin_path, { :verbose => $verbose }' 'FileUtils.mkdir_p(bin_path, :verbose => $verbose)' True
open "Rakefile"
edit 'FileUtils.mkdir_p bin_path, { :verbose => $verbose }' 'FileUtils.mkdir_p(bin_path, :verbose => $verbose)'
ruby ./minirake test
edit 'FileUtils.rm_f t.name, { :verbose => $verbose }' 'FileUtils.rm_f(t.name, :verbose => $verbose)'
edit 'file install_path => source_path do |t|
    FileUtils.rm_f t.name, { :verbose => $verbose }
    FileUtils.cp t.prerequisites.first, t.name, { :verbose => $verbose }' 'file install_path => source_path do |t|
    FileUtils.rm_f(t.name, :verbose => $verbose)
    FileUtils.cp(t.prerequisites.first, t.name, :verbose => $verbose)'
ruby ./minirake test
edit 'FileUtils.rm_f t.name, { :verbose => $verbose }
    FileUtils.cp t.prerequisites.first, t.name, { :verbose => $verbose }' 'FileUtils.rm_f(t.name, :verbose => $verbose)
    FileUtils.cp(t.prerequisites.first, t.name, :verbose => $verbose)'
goto 79
edit 'FileUtils.rm_f t.name, { :verbose => $verbose }' 'FileUtils.rm_f(t.name, :verbose => $verbose)'
edit 'file install_path => exec do |t|
    FileUtils.rm_f t.name, { :verbose => $verbose }
    FileUtils.cp t.prerequisites.first, t.name, { :verbose => $verbose }' 'file install_path => exec do |t|
    FileUtils.rm_f(t.name, :verbose => $verbose)
    FileUtils.cp(t.prerequisites.first, t.name, :verbose => $verbose)'
open "Rakefile"
edit 'FileUtils.rm_f t.name, { :verbose => $verbose }' 'FileUtils.rm_f(t.name, :verbose => $verbose)'
edit 'file install_path => exec do |t|
    FileUtils.rm_f t.name, { :verbose => $verbose }
    FileUtils.cp t.prerequisites.first, t.name, { :verbose => $verbose }' 'file install_path => exec do |t|
    FileUtils.rm_f(t.name, :verbose => $verbose)
    FileUtils.cp(t.prerequisites.first, t.name, :verbose => $verbose)'
open "Rakefile"
edit 'FileUtils.rm_f t.name, { :verbose => $verbose }' 'FileUtils.rm_f(t.name, :verbose => $verbose)'
edit 'file install_path => exec do |t|
    FileUtils.rm_f t.name, { :verbose => $verbose }
    FileUtils.cp t.prerequisites.first, t.name, { :verbose => $verbose }' 'file install_path => exec do |t|
    FileUtils.rm_f(t.name, :verbose => $verbose)
    FileUtils.cp(t.prerequisites.first, t.name, :verbose => $verbose)'
open "Rakefile"
edit 'FileUtils.rm_f t.name, { :verbose => $verbose }' 'FileUtils.rm_f(t.name, :verbose => $verbose)'
edit 'file install_path => exec do |t|
    FileUtils.rm_f t.name, { :verbose => $verbose }
    FileUtils.cp t.prerequisites.first, t.name, { :verbose => $verbose }' 'file install_path => exec do |t|
    FileUtils.rm_f(t.name, :verbose => $verbose)
    FileUtils.cp(t.prerequisites.first, t.name, :verbose => $verbose)'
open "Rakefile"
edit 'FileUtils.rm_f t.name, { :verbose => $verbose }' 'FileUtils.rm_f(t.name, :verbose => $verbose)'
edit 'file install_path => exec do |t|
          FileUtils.rm_f t.name, { :verbose => $verbose }
          FileUtils.cp t.prerequisites.first, t.name, { :verbose => $verbose }' 'file install_path => exec do |t|
          FileUtils.rm_f(t.name, :verbose => $verbose)
          FileUtils.cp(t.prerequisites.first, t.name, :verbose => $verbose)'
ruby ./minirake test
edit 'FileUtils.rm_f t.name, { :verbose => $verbose }
            FileUtils.cp t.prerequisites.first, t.name, { :verbose => $verbose }' 'FileUtils.rm_f(t.name, :verbose => $verbose)
            FileUtils.cp(t.prerequisites.first, t.name, :verbose => $verbose)'
ruby ./minirake test
