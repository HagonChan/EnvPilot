ls -la
ls -la .github/workflows
open ".github/workflows/main.yml"
sudo apt update && sudo apt install -y gettext libpcre2-dev python3-pip tmux g++-multilib clang llvm-symbolizer build-essential
apt update && apt install -y gettext libpcre2-dev python3-pip tmux g++-multilib clang llvm-symbolizer build-essential
pip3 install pexpect
apt install -y python3-pip
pip3 install pexpect
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
apt install -y curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source $HOME/.cargo/env
cmake --version
apt install -y cmake make ninja-build
mkdir -p build && cd build
cmake ..
source $HOME/.cargo/env && cmake ..
make
make test
ctest --output-on-failure -R "cd.fish|path.fish"
make test
