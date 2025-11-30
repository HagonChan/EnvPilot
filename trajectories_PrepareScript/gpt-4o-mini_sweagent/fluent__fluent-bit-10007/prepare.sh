
find_file '*.yml'
open "/testbed/tests/lib/shunit2/.travis.yml"
apt-get update && apt-get install -y ksh zsh
./test_runner
find . -name '*test*' -type f
open "/testbed/tests/lib/shunit2/shunit2_standalone_test.sh"
open "/testbed/tests/lib/shunit2/shunit2_test_helpers"
open "/testbed/tests/lib/shunit2/examples/mock_file_test.sh"
sh /testbed/tests/lib/shunit2/examples/mock_file_test.sh
SHUNIT_INC='/testbed/tests/lib/shunit2' sh /testbed/tests/lib/shunit2/examples/mock_file_test.sh
ls /testbed/tests/lib/shunit2
SHUNIT_INC='/testbed/tests/lib/shunit2/shunit2' sh /testbed/tests/lib/shunit2/examples/mock_file_test.sh
open "/testbed/tests/lib/shunit2/test_runner"
edit ../shunit2 ./shunit2 True
scroll_down
sh /testbed/tests/lib/shunit2/test_runner
ls /testbed/tests/lib
grep -r 'versions' .
edit 'if [ -r "${_runner_dir_}/versions" ]; then' 'if [ -r "./lib/versions" ]; then' True
sh /testbed/tests/lib/shunit2/test_runner
open "/testbed/tests/lib/shunit2/lib/versions"
scroll_up
cd /testbed/tests/lib/shunit2 && sh test_runner
edit 'if [ -r "./lib/versions" ]; then' 'if [ -r "/testbed/tests/lib/shunit2/lib/versions" ]; then' True
open "/testbed/tests/lib/shunit2/test_runner"
edit 'if [ -r "./lib/versions" ]; then' 'if [ -r "../lib/versions" ]; then' True
sh /testbed/tests/lib/shunit2/test_runner
edit 'for _runner_dir_ in . ${LIB_DIR:-lib}; do' 'if [ -r "../lib/versions" ]; then' True
sh /testbed/tests/lib/shunit2/test_runner
open "/testbed/tests/lib/shunit2/test_runner"
edit 'if [ -r "../lib/versions" ]; then' 'if [ -r "../lib/versions" ]; then _runner_lib_dir_="../lib"; break; fi' True
sh /testbed/tests/lib/shunit2/test_runner
edit 'if [ -r "../lib/versions" ]; then _runner_lib_dir_="../lib"; break; fi' 'if [ -r "../lib/versions" ]; then _runner_lib_dir_="../lib"; else runner_fatal '"'"'Unable to find versions library.'"'"'; exit 1; fi' True
sh /testbed/tests/lib/shunit2/test_runner
open "/testbed/tests/lib/shunit2/test_runner"
edit 'if [ -r "../lib/versions" ]; then _runner_lib_dir_="../lib"; else runner_fatal '"'"'Unable to find versions library.'"'"'; exit 1; fi' 'if [ -r "../lib/versions" ]; then _runner_lib_dir_="../lib"; else runner_fatal '"'"'Unable to find versions library.'"'"'; exit 1; fi' True
edit 'if [ -r "../lib/versions" ]; then _runner_lib_dir_="../lib"; else runner_fatal '"'"'Unable to find versions library.'"'"'; exit 1; fi' 'if [ -r "../lib/versions" ]; then _runner_lib_dir_="../lib"; else runner_fatal '"'"'Unable to find versions library.'"'"'; exit 1; fi' True
edit 'if [ -r ../lib/versions ]; then _runner_lib_dir_="../lib"; fi' 'if [ -r "../lib/versions" ]; then _runner_lib_dir_="../lib"; else runner_fatal '"'"'Unable to find versions library.'"'"'; exit 1; fi' True

