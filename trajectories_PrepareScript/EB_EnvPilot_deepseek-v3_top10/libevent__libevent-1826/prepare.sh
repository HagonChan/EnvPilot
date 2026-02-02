ls -la
ls -la .github/workflows
open ".github/workflows/build.yml"
apt-get update && apt-get install -y libmbedtls-dev
apt-get install -y clang cmake make gcc g++ libssl-dev zlib1g-dev build-essential
./autogen.sh
apt-get install -y automake autoconf libtool pkg-config
./autogen.sh
./configure
make
make test
./test/regress
