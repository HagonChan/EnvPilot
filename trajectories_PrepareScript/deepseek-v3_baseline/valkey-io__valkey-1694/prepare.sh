ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
sudo apt-get install tcl8.6 tclx -y
apt-get install tcl8.6 tclx -y
make -j4 all-with-unit-tests SERVER_CFLAGS='-Werror' BUILD_TLS=yes USE_FAST_FLOAT=yes
apt-get install make -y
make -j4 all-with-unit-tests SERVER_CFLAGS='-Werror' BUILD_TLS=yes USE_FAST_FLOAT=yes
apt-get install gcc pkg-config -y
apt-get update
apt-get install gcc pkg-config -y
make -j4 all-with-unit-tests SERVER_CFLAGS='-Werror' BUILD_TLS=yes USE_FAST_FLOAT=yes
apt-get install libjemalloc-dev -y
make -j4 all-with-unit-tests SERVER_CFLAGS='-Werror' BUILD_TLS=yes USE_FAST_FLOAT=yes
make -j4 all-with-unit-tests BUILD_TLS=yes USE_FAST_FLOAT=yes
make -j4 all-with-unit-tests SERVER_CFLAGS='' BUILD_TLS=yes USE_FAST_FLOAT=yes
open "src/Makefile"
edit 'WARN=-Wall -W -Wno-missing-field-initializers -Werror=deprecated-declarations -Wstrict-prototypes' 'WARN=-Wall -W -Wno-missing-field-initializers -Wstrict-prototypes' True
make -j4 all-with-unit-tests BUILD_TLS=yes USE_FAST_FLOAT=yes
make -j4 all-with-unit-tests BUILD_TLS=yes USE_FAST_FLOAT=yes V=1
apt-get install libssl-dev -y
make -j4 all-with-unit-tests BUILD_TLS=yes USE_FAST_FLOAT=yes
open "Makefile"
ls -la deps
open "deps/Makefile"
cd deps && make hiredis
make fpconv
make jemalloc
cd .. && make -j4 all-with-unit-tests BUILD_TLS=yes USE_FAST_FLOAT=yes
cd deps && make hiredis USE_SSL=1
make fast_float_c_interface
apt-get install g++ -y
apt-get update
apt-get install g++ -y
make fast_float_c_interface
cd .. && make -j4 all-with-unit-tests BUILD_TLS=yes USE_FAST_FLOAT=yes
cd src && ./runtest
open "src/Makefile"
open "Makefile"
search_file runtest Makefile
search_file test: Makefile
ls -la src/runtest*
search_file runtest Makefile
open ".github/workflows/ci.yml"
cd .. && ls -la .github/workflows/
open ".github/workflows/ci.yml"
find . -name "runtest*" -type f
ls -la runtest
apt-get install tcl8.6 tclx -y

