

find_file '*.yml'
open ".github/workflows/push.yml"
scroll_down
apt update
apt install -y build-essential libmysqlclient-dev libpq-dev libsqlite3-dev
./configure --disable-debug --disable-zts
find_file Makefile
open "/testbed/win32/build/Makefile"
find . -type d
find_file '*' ./scripts
find_file 'README*'
open "/testbed/README.md"
dpkg -l | grep -E 'pkg-config|build-essential|autoconf|bison|re2c|libxml2-dev|libsqlite3-dev'
apt install -y pkg-config autoconf bison re2c libxml2-dev
./buildconf
./configure --enable-debug
make -j$(nproc)
make test
find_file '*' ./tests
prove tests/basic/019.phpt
find_file '*.sh' ./tests
open "/testbed/tests/security/open_basedir_linkinfo.sh"
sh tests/security/open_basedir_linkinfo.sh
