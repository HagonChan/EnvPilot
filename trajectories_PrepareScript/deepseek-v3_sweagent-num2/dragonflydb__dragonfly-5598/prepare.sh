ls -la
open ".circleci/config.yml"
open ".github/workflows"
ls -la .github/workflows
open ".github/workflows/ci.yml"
open "Makefile"
apt-get update && apt-get install -y cmake ninja-build
cmake -L -B build-release -DCMAKE_BUILD_TYPE=Release -GNinja
apt-get install -y g++
cmake -L -B build-release -DCMAKE_BUILD_TYPE=Release -GNinja
apt-get install -y libssl-dev
cmake -L -B build-release -DCMAKE_BUILD_TYPE=Release -GNinja
git submodule status
git submodule update --init --recursive
cmake -L -B build-release -DCMAKE_BUILD_TYPE=Release -GNinja
open "CMakeLists.txt"
open "README.md"
open "docs/build-from-source.md"
apt-get install -y libunwind-dev libboost-context-dev autoconf-archive libtool bison zlib1g-dev
./helio/blaze.sh -release
cd build-opt && ninja dragonfly
ninja dragonfly
git submodule update --init --recursive third_party/hdr_histogram_project
open "../CMakeLists.txt"
ls -la ../third_party ../internal
ls -la ../scripts
ls -la ../helio
../helio/install-dependencies.sh
apt-get install -y wget
../helio/install-dependencies.sh
apt-get install -y bzip2
../helio/install-dependencies.sh
wget https://boostorg.jfrog.io/artifactory/main/release/1.76.0/source/boost_1_76_0.tar.bz2 && tar -xjf boost_1_76_0.tar.bz2
wget https://boostorg.jfrog.io/artifactory/main/release/1.76.0/source/boost_1_76_0.tar.gz && tar -xzf boost_1_76_0.tar.gz
wget https://boostorg.jfrog.io/artifactory/main/release/1.76.0/source/boost_1_76_0.tar.bz2 -O boost_1_76_0.tar.bz2 && tar -xjf boost_1_76_0.tar.bz2
apt-get install -y libboost-all-dev
cmake -L -B build-release -DCMAKE_BUILD_TYPE=Release -GNinja
ls -la ../
cmake -L -B build-release -DCMAKE_BUILD_TYPE=Release -GNinja ..
cd build-release && ninja
git submodule update --init --recursive third_party/hdr_histogram_project
open "../CMakeLists.txt"
open "/testbed/CMakeLists.txt"
ls -la /testbed/third_party /testbed/internal
ls -la /testbed/scripts
ls -la /testbed/helio
/testbed/helio/install-dependencies.sh
wget https://boostorg.jfrog.io/artifactory/main/release/1.76.0/source/boost_1_76_0.tar.gz && tar -xzf boost_1_76_0.tar.gz && cd boost_1_76_0 && ./bootstrap.sh && ./b2 install
apt-get install -y libboost-all-dev

