ls -la
ls -la .github/workflows
open ".github/workflows/build.yaml"
open "README"
open "INSTALL"
sudo apt update && sudo apt install -y gcc clang mingw-w64 unzip build-essential wget python3-pip python3-docutils man2html-base liblzo2-dev libpam0g-dev liblz4-dev libcap-ng-dev libnl-genl-3-dev linux-libc-dev libcmocka-dev libtool automake autoconf libssl-dev libpkcs11-helper1-dev softhsm2 gnutls-bin pkg-config golang ninja-build
apt update && apt install -y gcc clang mingw-w64 unzip build-essential wget python3-pip python3-docutils man2html-base liblzo2-dev libpam0g-dev liblz4-dev libcap-ng-dev libnl-genl-3-dev linux-libc-dev libcmocka-dev libtool automake autoconf libssl-dev libpkcs11-helper1-dev softhsm2 gnutls-bin pkg-config golang ninja-build
./configure
autoreconf --version
autoreconf -vi
./configure
make
make check
apt install -y iproute2
make check
make install
/usr/local/sbin/openvpn --version
