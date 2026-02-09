ls -la
ls -la .github/workflows
open ".github/workflows/main.yml"
open "README.rst"
open "CMakeLists.txt"
open "Cargo.toml"
apt-get update && apt-get install -y gettext libpcre2-dev python3-pip tmux g++-multilib clang llvm-symbolizer build-essential
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --default-toolchain 1.70
apt-get install -y curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --default-toolchain 1.70
source $HOME/.cargo/env
pip3 install pexpect
apt-get install -y python3-pip
pip3 install pexpect
apt-get install -y cmake
mkdir -p build && cd build && cmake ..
source $HOME/.cargo/env && cd build && cmake ..
mkdir -p build && source $HOME/.cargo/env && cd build && cmake ..
make
cd .. && make
make test
cat Testing/Temporary/LastTest.log | grep -A 10 "cd.fish"
cat Testing/Temporary/LastTest.log | grep -A 10 "path.fish"
