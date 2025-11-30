ls -la
open ".cirrus.yml"
apt-get update && apt-get install -y cmake ninja-build gettext libpcre2-dev python3-pip tmux g++-multilib clang llvm-symbolizer build-essential
apt-get update
apt-get install -y cmake ninja-build gettext libpcre2-dev python3-pip tmux g++-multilib clang build-essential
mkdir build && cd build && cmake -G Ninja -DCMAKE_BUILD_TYPE=Debug -DCTEST_PARALLEL_LEVEL=6 ..
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source $HOME/.cargo/env
cmake -G Ninja -DCMAKE_BUILD_TYPE=Debug -DCTEST_PARALLEL_LEVEL=6 ..
ninja
ninja test
ctest --output-on-failure
