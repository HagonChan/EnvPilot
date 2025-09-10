ls -la
ls -la .github/workflows
open ".github/workflows/root-ci.yml"
search_file cmake .github/workflows/root-ci.yml
search_file make .github/workflows/root-ci.yml
open ".travis.yml"
open "math/minuit2/.ci/make_and_test.sh"
apt-get update && apt-get install -y gcc make cmake libssl-dev doxygen qt5-doctools lcov pandoc awscli
cd math/minuit2 && mkdir -p build && cd build && cmake .. -Dminuit2_standalone=OFF -DCMAKE_INSTALL_PREFIX=install && make -j2 && make test && make install
apt-get install -y cmake
cd math/minuit2 && mkdir -p build && cd build && cmake .. -Dminuit2_standalone=OFF -DCMAKE_INSTALL_PREFIX=install && make -j2 && make test && make install
ls -la
cd /testbed && ls -la
cd math/minuit2 && mkdir -p build && cd build && cmake .. -Dminuit2_standalone=OFF -DCMAKE_INSTALL_PREFIX=install && make -j2 && make test && make install
apt-get install -y g++
cd /testbed/math/minuit2/build && cmake .. -Dminuit2_standalone=OFF -DCMAKE_INSTALL_PREFIX=install && make -j2 && make test && make install
cat /testbed/math/minuit2/build/Testing/Temporary/LastTest.log
cd /testbed/math/minuit2/build && make install
ls -la /testbed/math/minuit2/build/install
