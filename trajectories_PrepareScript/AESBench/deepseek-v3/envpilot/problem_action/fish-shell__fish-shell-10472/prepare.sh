ls -la
ls -la .github/workflows
open ".github/workflows/main.yml"
sudo apt update && sudo apt install -y gettext libpcre2-dev python3-pip tmux g++-multilib clang llvm-symbolizer build-essential
apt update && apt install -y gettext libpcre2-dev python3-pip tmux g++-multilib clang llvm-symbolizer build-essential
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --default-toolchain 1.70
apt install -y curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --default-toolchain 1.70
source $HOME/.cargo/env
pip3 install pexpect
apt install -y python3-pip
pip3 install pexpect
mkdir -p build
cd build && cmake ..
apt install -y cmake
cmake ..
export PATH=$PATH:$HOME/.cargo/bin && cmake ..
make
make test
