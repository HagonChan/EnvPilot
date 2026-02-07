ls -la
open ".gitlab-ci.yml"
open "Makefile"
apt-get update && apt-get install -y git build-essential bison ruby ruby-dev
./minirake all
open "Rakefile"
rake all
edit 'FileUtils.mkdir_p bin_path, { :verbose => $verbose }' 'FileUtils.mkdir_p bin_path'
rake all
edit 'FileUtils.rm_f t.name, { :verbose => $verbose }' 'FileUtils.rm_f t.name'
edit 'file install_path => source_path do |t|
      FileUtils.rm_f t.name, { :verbose => $verbose }
      FileUtils.cp t.prerequisites.first, t.name, { :verbose => $verbose }' 'file install_path => source_path do |t|
      FileUtils.rm_f t.name
      FileUtils.cp t.prerequisites.first, t.name'
open "Rakefile"
edit 'FileUtils.rm_f t.name, { :verbose => $verbose }' 'FileUtils.rm_f t.name'
edit 'file install_path => source_path do |t|
    FileUtils.rm_f t.name, { :verbose => $verbose }
    FileUtils.cp t.prerequisites.first, t.name, { :verbose => $verbose }
  end' 'file install_path => source_path do |t|
    FileUtils.rm_f t.name
    FileUtils.cp t.prerequisites.first, t.name
  end'
rake all
edit 'file install_path => exec do |t|
    FileUtils.rm_f t.name, { :verbose => $verbose }
    FileUtils.cp t.prerequisites.first, t.name, { :verbose => $verbose }
  end' 'file install_path => exec do |t|
    FileUtils.rm_f t.name
    FileUtils.cp t.prerequisites.first, t.name
  end'
open "Rakefile"
edit 'file install_path => exec do |t|
    FileUtils.rm_f t.name, { :verbose => $verbose }
    FileUtils.cp t.prerequisites.first, t.name, { :verbose => $verbose }
  end' 'file install_path => exec do |t|
    FileUtils.rm_f t.name
    FileUtils.cp t.prerequisites.first, t.name
  end'
edit 'file install_path => exec do |t|
          FileUtils.rm_f t.name, { :verbose => $verbose }
          FileUtils.cp t.prerequisites.first, t.name, { :verbose => $verbose }
        end' 'file install_path => exec do |t|
          FileUtils.rm_f t.name
          FileUtils.cp t.prerequisites.first, t.name
        end'
rake all
edit 'file install_path => exec do |t|
            FileUtils.rm_f t.name, { :verbose => $verbose }
            FileUtils.cp t.prerequisites.first, t.name, { :verbose => $verbose }
          end' 'file install_path => exec do |t|
            FileUtils.rm_f t.name
            FileUtils.cp t.prerequisites.first, t.name
          end'
rake all
rake test
