
find_file '*.yml'
open "/testbed/.github/workflows/c-build.yml"
apt update && apt install -y clang libavahi-client-dev libpopt-dev gdb python3-dev python3-setuptools
./autogen.sh
autoconf --version
apt install -y autoconf
./autogen.sh
./configure
apt install -y make
make
apt install -y gcc
make
make check
