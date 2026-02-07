ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
open "Makefile"
open "CMakeLists.txt"
ls -la tests
open "tests/README.md"
python3 -m venv venv
apt-get update && apt-get install -y python3 python3-pip python3-venv
python3 -m venv venv && source venv/bin/activate
pip3 install -r tests/dragonfly/requirements.txt
ls -la build-dbg
make configure && make build
apt-get install -y cmake ninja-build
make configure && make build
apt-get install -y libssl-dev
ls -la
ls -la helio
open ".gitmodules"
git submodule update --init --recursive
ls -la helio
ls -la helio/third_party helio/internal
open "helio/CMakeLists.txt"
open "helio/README.md"
sudo ./helio/install-dependencies.sh
./helio/install-dependencies.sh
apt-get install -y wget
./helio/install-dependencies.sh
wget https://boostorg.jfrog.io/artifactory/main/release/1.76.0/source/boost_1_76_0.tar.bz2 -P /tmp/boost
wget https://boostorg.jfrog.io/artifactory/main/release/1.76.0/source/boost_1_76_0.tar.bz2 -O /tmp/boost/boost_1_76_0.tar.bz2
wget https://dl.bintray.com/boostorg/release/1.76.0/source/boost_1_76_0.tar.bz2 -O /tmp/boost/boost_1_76_0.tar.bz2
wget https://boostorg.jfrog.io/artifactory/main/release/1.81.0/source/boost_1_81_0.tar.bz2 -O /tmp/boost/boost_1_81_0.tar.bz2
open "helio/install-dependencies.sh"
edit 'url="https://boostorg.jfrog.io/artifactory/main/release/${BVER}/source/$BOOST.tar.bz2"' 'url="https://sourceforge.net/projects/boost/files/boost/${BVER}/boost_${BVER//./_}.tar.bz2/download"' True
./helio/install-dependencies.sh
edit BVER=1.76.0 BVER=1.81.0 True
./helio/install-dependencies.sh
wget https://boostorg.jfrog.io/artifactory/main/release/1.81.0/source/boost_1_81_0.tar.bz2 -O /tmp/boost/boost_1_81_0.tar.bz2
wget https://boostorg.jfrog.io/artifactory/main/release/1.81.0/source/boost_1_81_0.tar.bz2 -O /tmp/boost/boost_1_81_0.tar.bz2 --no-check-certificate
wget https://sourceforge.net/projects/boost/files/boost/1.81.0/boost_1_81_0.tar.bz2/download -O /tmp/boost/boost_1_81_0.tar.bz2
edit 'if ! [ -e $BOOST.tar.bz2 ]; then wget -nv ${url} -O $BOOST.tar.bz2; fi' 'if ! [ -e $BOOST.tar.bz2 ]; then echo "Boost archive already exists in /tmp/boost/$BOOST.tar.bz2"; fi' True
./helio/install-dependencies.sh

