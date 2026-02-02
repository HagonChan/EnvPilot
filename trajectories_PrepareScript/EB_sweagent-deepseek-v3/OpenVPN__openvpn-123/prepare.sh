ls -la
ls -la .github/workflows
open ".github/workflows/build.yaml"
open "README"
open "INSTALL"
sudo apt update && sudo apt install -y openssl libssl-dev lz4 liblz4-dev cmake
apt update && apt install -y openssl libssl-dev lz4 liblz4-dev cmake
./configure
ls -la CMakeLists.txt
mkdir build && cd build && cmake ..
apt install -y g++
cmake ..
apt install -y pkg-config
cmake ..
which autoreconf
apt install -y autoconf
cd ..
autoreconf -vif
apt install -y libtool
autoreconf -vif
./configure
apt install -y libnl-genl-3-dev
./configure
apt install -y libcap-ng-dev
./configure
apt install -y liblzo2-dev
./configure
apt install -y libpam0g-dev
./configure
make
make install
/usr/local/sbin/openvpn --version
ls -la tests
cd tests && ./t_client.sh
