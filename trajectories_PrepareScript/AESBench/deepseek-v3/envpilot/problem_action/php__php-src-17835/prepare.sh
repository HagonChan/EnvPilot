ls -la
open ".github/workflows"
ls -la .github/workflows
open ".github/workflows/push.yml"
open ".github/actions/apt-x64/action.yml"
apt-get update -y && apt-get install -y autoconf gcc make bison re2c libxml2-dev libsqlite3-dev libssl-dev libtool ccache
open "README.md"
./buildconf
./configure --enable-debug
apt-get install -y pkg-config
./configure --enable-debug
make -j$(nproc)
make test
open "Makefile"
search_file test Makefile
make help
search_file test- Makefile
open "run-tests.php"
ls tests
make test TESTS=tests/basic
