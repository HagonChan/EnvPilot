ls -la
ls -la .github/workflows
open ".github/workflows/c-build.yml"
apt-get update && apt-get install -y clang libavahi-client-dev libpopt-dev gdb python3-dev python3-setuptools autoconf automake build-essential pkg-config libtool
./autogen.sh
./configure PYTHON="$(which python3.13 || which python3)"
make
make check
