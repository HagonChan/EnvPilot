
find_file '*.yml'
open "/testbed/.github/workflows/doxygen.yml"
open "/testbed/.github/workflows/coverity-scan.yml"
apt-get update && apt-get install -y build-essential doxygen graphviz liblzo2-dev libpam0g-dev liblz4-dev libcap-ng-dev libnl-genl-3-dev linux-libc-dev man2html libcmocka-dev python3-docutils libtool automake autoconf libssl-dev libpkcs11-helper1-dev softhsm2 gnutls-bin
autoreconf -f -i
./configure
apt-get install -y pkg-config
./configure
make doxygen
make
make test
find_file Makefile
open "/testbed/tests/Makefile"
goto 1
scroll_down
goto 1000
goto 1450
make -C tests
make -C tests test
search_dir test tests
open "/testbed/tests/unit_tests/README.md"
make -C tests/unit_tests check
