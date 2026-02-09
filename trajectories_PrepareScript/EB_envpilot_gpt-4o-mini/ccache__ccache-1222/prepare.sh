
ls -R
ls ci
cat ci/build-and-verify-source-package
apt-get update && apt-get install -y clang cmake ninja-build g++-8 g++-9 g++-10 g++-11 g++-12 libhiredis-dev libzstd-dev pkg-config python3 redis-server redis-tools binutils lld
apt-get install -y clang cmake ninja-build g++-9 g++-10 g++-11 g++-12 libhiredis-dev libzstd-dev pkg-config python3 redis-server redis-tools binutils lld
mkdir -p /tmp/ccache && cd /tmp/ccache && git archive --prefix=ccache/ -o ccache.tar.gz HEAD && tar xf ccache.tar.gz && cd ccache && mkdir build && cd build && cmake .. && ninja -v && ctest --output-on-failure
echo '#!/bin/sh\n\nset -eu\n\n# Create a temporary directory\nTMP_DIR=$(mktemp -d)\ntrap "rm -rf $TMP_DIR" EXIT\n\n# Archive the current Git repository\ncd $PWD\ngit archive --prefix=ccache/ -o $TMP_DIR/ccache.tar.gz HEAD\ntar xf $TMP_DIR/ccache.tar.gz -C $TMP_DIR\ncd $TMP_DIR/ccache\nmkdir build\ncd build\ncmake ..\nninja -v\nctest --output-on-failure' > build_and_test.sh && chmod +x build_and_test.sh
./build_and_test.sh
echo -e '#!/bin/sh\n\nset -eu\n\n# Create a temporary directory\nTMP_DIR=$(mktemp -d)\ntrap "rm -rf $TMP_DIR" EXIT\n\n# Archive the current Git repository\ncd $PWD\ngit archive --prefix=ccache/ -o $TMP_DIR/ccache.tar.gz HEAD\ntar xf $TMP_DIR/ccache.tar.gz -C $TMP_DIR\ncd $TMP_DIR/ccache\nmkdir build\ncd build\ncmake ..\nninja -v\nctest --output-on-failure' > build_and_test.sh && chmod +x build_and_test.sh
./build_and_test.sh
echo -e '#!/bin/sh\n\nset -eu\n\n# Create a temporary directory\nTMP_DIR=$(mktemp -d)\ntrap "rm -rf $TMP_DIR" EXIT\n\n# Archive the current Git repository\nREPO_DIR=$(git rev-parse --show-toplevel)\ncd $REPO_DIR\ngit archive --prefix=ccache/ -o $TMP_DIR/ccache.tar.gz HEAD\ntar xf $TMP_DIR/ccache.tar.gz -C $TMP_DIR\ncd $TMP_DIR/ccache\nmkdir build\ncd build\ncmake ..\nninja -v\nctest --output-on-failure' > build_and_test.sh && chmod +x build_and_test.sh
./build_and_test.sh
mkdir -p /tmp/ccache && cd /tmp/ccache && git -C /path/to/repo archive --prefix=ccache/ -o ccache.tar.gz HEAD && tar xf ccache.tar.gz && cd ccache && mkdir build && cd build && cmake .. && ninja -v && ctest --output-on-failure
git archive --prefix=ccache/ -o ccache.tar.gz HEAD && tar xf ccache.tar.gz && cd ccache && mkdir build && cd build && cmake .. && ninja -v && ctest --output-on-failure
cd /path/to/repo && git archive --prefix=ccache/ -o ccache.tar.gz HEAD && tar xf ccache.tar.gz && cd ccache && mkdir build && cd build && cmake .. && ninja -v && ctest --output-on-failure
cd /testbed && git archive --prefix=ccache/ -o ccache.tar.gz HEAD && tar xf ccache.tar.gz && cd ccache && mkdir build && cd build && cmake .. && ninja -v && ctest --output-on-failure
grep -i 'error' /testbed/ccache/build/CMakeFiles/CMakeOutput.log
grep -i 'error' /testbed/ccache/build/CMakeFiles/CMakeError.log
apt-get install -y libc6-dev
apt-get install -y linux-libc-dev
apt-get install -y build-essential
mkdir -p /testbed/ccache/build && cd /testbed/ccache/build && cmake .. && ninja -v && ctest --output-on-failure
ls -l /testbed/ccache/build
cmake -G Ninja ..
rm -rf CMakeCache.txt CMakeFiles && cmake -G Ninja ..
ninja -v && ctest --output-on-failure
