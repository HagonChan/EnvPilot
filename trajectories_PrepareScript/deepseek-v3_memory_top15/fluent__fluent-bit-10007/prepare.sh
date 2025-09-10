ls -la
ls -la .github/workflows
open ".github/workflows/pr-compile-check.yaml"
sudo apt-get update && sudo apt-get install -y curl gcc-7 g++-7 clang-6.0 libsystemd-dev gcovr libyaml-dev libluajit-5.1-dev libnghttp2-dev libjemalloc-dev
apt-get update && apt-get install -y curl gcc-7 g++-7 clang-6.0 libsystemd-dev gcovr libyaml-dev libluajit-5.1-dev libnghttp2-dev libjemalloc-dev
apt-get install -y curl gcc g++ clang libsystemd-dev gcovr libyaml-dev libluajit-5.1-dev libnghttp2-dev libjemalloc-dev
mkdir -p /tmp/libbacktrace/build && curl -L https://github.com/ianlancetaylor/libbacktrace/archive/8602fda.tar.gz | tar --strip-components=1 -xzC /tmp/libbacktrace/ && pushd /tmp/libbacktrace/build && ../configure && make && make install && popd
apt-get install -y build-essential
make && make install
cd /testbed && mkdir -p build && cd build && cmake .. -DFLB_PREFER_SYSTEM_LIBS=On && make
apt-get install -y cmake
cd /testbed/build && cmake .. -DFLB_PREFER_SYSTEM_LIBS=On && make
apt-get install -y flex bison
cd /testbed/build && cmake .. -DFLB_PREFER_SYSTEM_LIBS=On && make
apt-get install -y libssl-dev
cd /testbed/build && make
ls -la /usr/lib/x86_64-linux-gnu/libssl* /usr/lib/x86_64-linux-gnu/libcrypto*
cd /testbed/build && make LDFLAGS="-lssl -lcrypto"
cd /testbed/build && cmake .. -DFLB_PREFER_SYSTEM_LIBS=On -DCMAKE_EXE_LINKER_FLAGS="-lssl -lcrypto" && make
search_file test .github/workflows/pr-compile-check.yaml
search_file test /testbed/.github/workflows/pr-compile-check.yaml
search_file test /testbed/README.md
ls -la /testbed/tests
ls -la /testbed/tests/runtime
open "/testbed/tests/runtime/CMakeLists.txt"
ls -la /testbed/build/bin
cd /testbed/build && cmake .. -DFLB_PREFER_SYSTEM_LIBS=On -DFLB_TESTS_RUNTIME=On && make
cd /testbed/build && ctest
ls -la /testbed/build/bin/flb-rt-*
/testbed/build/bin/flb-rt-core-timeout
/testbed/build/bin/flb-rt-out_file
/testbed/build/bin/flb-rt-filter_grep
