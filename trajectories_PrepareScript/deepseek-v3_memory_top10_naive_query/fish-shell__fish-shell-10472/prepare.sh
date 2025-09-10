ls -la
ls -la .github/workflows
open ".github/workflows/main.yml"
open "CMakeLists.txt"
open "README.rst"
sudo apt update && sudo apt install -y gettext libpcre2-dev python3-pip tmux g++-multilib clang llvm-symbolizer
apt update && apt install -y gettext libpcre2-dev python3-pip tmux g++-multilib clang llvm-symbolizer
pip3 install pexpect
apt install -y python3-pip
pip3 install pexpect
curl https://sh.rustup.rs -sSf | sh -s -- -y
apt install -y curl
curl https://sh.rustup.rs -sSf | sh -s -- -y
. $HOME/.cargo/env
rustc --version
find_file rust-toolchain
mkdir -p build && cd build && cmake ..
apt install -y cmake
cmake ..
. $HOME/.cargo/env
rustc --version
cmake ..
make
make test
