ls -la
open ".travis.yml"
apt-get update && apt-get install -y clang cmake make
apt-get install -y build-essential libssl-dev python3 python3-pip
pip install awscli==1.36.40 gcovr
cd math/minuit2 && .ci/make_and_test.sh
open "/testbed/math/minuit2/build/Testing/Temporary/LastTest.log"
search_file ExampleCMakeBuild /testbed/math/minuit2/build/Testing/Temporary/LastTest.log
make test --rerun-failed --output-on-failure
ctest --rerun-failed --output-on-failure
cd build && ctest --rerun-failed --output-on-failure
apt-cache search root
wget https://root.cern.ch/download/ROOT_v6.26.06.source.tar.gz
curl -O https://root.cern.ch/download/ROOT_v6.26.06.source.tar.gz
apt-get update && apt-get install -y wget
wget https://root.cern.ch/download/ROOT_v6.26.06.source.tar.gz
curl -s https://root.cern.ch/download/ | grep -oP 'ROOT_v[0-9]+\\.[0-9]+\\.[0-9]+\.source\.tar\.gz' | head -n 1
apt-cache search root
wget https://github.com/root-project/root/archive/refs/tags/v6.26.06.tar.gz
git clone https://github.com/root-project/root.git
cd root
mkdir build && cd build
cmake ..
apt-get install -y libx11-dev
cmake ..
apt-get install -y libxext-dev libxft-dev libxpm-dev
cmake ..
make
ctest
cd ../.. && cd build && ctest
cd .. && cd build && ctest
open "/testbed/math/minuit2/build/Testing/Temporary/LastTest.log"
search_file ExampleCMakeBuild /testbed/math/minuit2/build/Testing/Temporary/LastTest.log
ctest --rerun-failed --output-on-failure
apt-cache search root
wget https://github.com/root-project/root/archive/refs/tags/v6.26.06.tar.gz
git clone https://github.com/root-project/root.git
cd root && git tag
cd root && git checkout v6.24.06
cd .. && git checkout v6.24.06
cd root && git checkout master
mkdir build && cd build
cd build && cmake ..
make
ctest
cd ../.. && cd build && ctest
ls -la ../..
open "math/minuit2/CMakeLists.txt"
cd .. && cd minuit2 && ls -la

