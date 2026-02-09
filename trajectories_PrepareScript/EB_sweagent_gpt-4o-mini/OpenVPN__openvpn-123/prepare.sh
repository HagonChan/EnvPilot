
find_file '*.yml'
open "/testbed/.github/workflows/doxygen.yml"
open "/testbed/.github/workflows/coverity-scan.yml"
apt update && apt install -y --no-install-recommends build-essential doxygen graphviz liblzo2-dev libpam0g-dev liblz4-dev libcap-ng-dev libnl-genl-3-dev linux-libc-dev man2html libcmocka-dev python3-docutils libtool automake autoconf libssl-dev
apt install -y libpkcs11-helper1-dev softhsm2 gnutls-bin
autoreconf -f -i
./configure --enable-pkcs11
apt install -y pkg-config
./configure --enable-pkcs11
make
make test
goto 0
find_file '*' tests
open "/testbed/tests/unit_tests/README.md"
make check
apt install -y iproute2
make check
