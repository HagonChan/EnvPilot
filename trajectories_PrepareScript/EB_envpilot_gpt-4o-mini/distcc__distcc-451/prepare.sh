
ls -R
ls -a .github
ls -a .github/workflows
open ".github/workflows/c-build.yml"
apt-get update && apt-get install -y clang libavahi-client-dev libpopt-dev gdb python3-dev python3-setuptools
./autogen.sh
apt-get install -y autoconf
./autogen.sh
./configure
apt-get install -y make
make
apt-get install -y gcc g++
make
make check
