ls -la
ls -la .github/workflows
open ".github/workflows/pr-compile-check.yaml"
sudo apt-get update && sudo apt-get install -y gcc g++ cmake make libssl-dev libyaml-dev libsystemd-dev libluajit-5.1-dev libnghttp2-dev libjemalloc-dev
apt-get update && apt-get install -y gcc g++ cmake make libssl-dev libyaml-dev libsystemd-dev libluajit-5.1-dev libnghttp2-dev libjemalloc-dev
apt-get install -y gcc g++ cmake make libssl-dev libyaml-dev libsystemd-dev libluajit-5.1-dev libnghttp2-dev libjemalloc-dev
mkdir -p build && cd build && cmake -DFLB_PREFER_SYSTEM_LIBS=On -DFLB_JEMALLOC=On -DFLB_SHARED_LIB=Off -DFLB_DEBUG=On -DFLB_ALL=On -DFLB_EXAMPLES=Off .. && make -j$(nproc)
apt-get install -y flex bison
cmake -DFLB_PREFER_SYSTEM_LIBS=On -DFLB_JEMALLOC=On -DFLB_SHARED_LIB=Off -DFLB_DEBUG=On -DFLB_ALL=On -DFLB_EXAMPLES=Off .. && make -j$(nproc)
ctest
open "README.md"
ls -la
ls -la test_wrgsbase
