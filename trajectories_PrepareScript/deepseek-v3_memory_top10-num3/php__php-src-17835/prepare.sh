ls
open "README.md"
apt-get update && apt-get install -y pkg-config build-essential autoconf bison re2c libxml2-dev libsqlite3-dev libtool ccache
./buildconf
./configure --enable-debug
make -j4
make test
php run-tests.php
./sapi/cli/php run-tests.php
./sapi/cli/php -v
