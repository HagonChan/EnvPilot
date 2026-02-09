
ls -R
ls ci
cat ci/build_cmake.sh
apt-get update && apt-get install -y gcc cmake make libgtest-dev
export ARCH=64; export SHARED=ON; export CHAR_SIGN=OFF; bash ci/build_cmake.sh
apt-get install -y g++
export ARCH=64; export SHARED=ON; export CHAR_SIGN=OFF; bash ci/build_cmake.sh
rm -rf build
export ARCH=64; export SHARED=ON; export CHAR_SIGN=OFF; bash ci/build_cmake.sh
apt-get install -y zlib1g-dev
export ARCH=64; export SHARED=ON; export CHAR_SIGN=OFF; bash ci/build_cmake.sh
rm -rf build
export ARCH=64; export SHARED=ON; export CHAR_SIGN=OFF; bash ci/build_cmake.sh
cat /testbed/build/Testing/Temporary/LastTest.log
