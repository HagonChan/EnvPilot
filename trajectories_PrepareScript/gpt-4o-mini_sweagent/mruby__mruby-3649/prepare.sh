find_file '*.yml' .
open "/testbed/.gitlab-ci.yml"
find_file minirake .
ls -l /testbed/minirake
apt update
apt install -y gcc g++
./minirake all test
apt install -y ruby
./minirake all test
open "/testbed/Rakefile"
scroll_down
search_file 'def run_test' /testbed/Rakefile
find_file '*.rake' ./tasks
search_file 'def run_test' /testbed/tasks/mrbgem_spec.rake
search_file 'def run_test' /testbed/tasks/gitlab.rake
search_dir run_test ./tasks
open "/testbed/tasks/mruby_build.rake"
scroll_down
./minirake all test
search_file 'def ' /testbed/Rakefile
search_dir 'def ' ./tasks
search_file run_test /testbed/tasks/mrbgem_spec.rake
open "/testbed/.gitlab-ci.yml"
./minirake --verbose all test
