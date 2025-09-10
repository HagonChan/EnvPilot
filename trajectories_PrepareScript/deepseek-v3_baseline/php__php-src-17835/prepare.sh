ls -la
ls -la .github/workflows
open ".github/workflows/push.yml"
goto 200
open "README.md"
sudo apt install -y pkg-config build-essential autoconf bison re2c libxml2-dev libsqlite3-dev
apt install -y pkg-config build-essential autoconf bison re2c libxml2-dev libsqlite3-dev
apt update
apt install -y pkg-config build-essential autoconf bison re2c libxml2-dev libsqlite3-dev
./buildconf
./configure --enable-debug
make -j$(nproc)
make test
make TEST_PHP_ARGS=-j2 test
open "run-tests.php"
php run-tests.php -j1 -x
sapi/cli/php run-tests.php -j1 -x
ls tests
ls tests/basic
sapi/cli/php run-tests.php tests/basic/001.phpt
