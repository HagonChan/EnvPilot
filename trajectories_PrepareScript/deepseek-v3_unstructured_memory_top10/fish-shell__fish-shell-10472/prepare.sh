ls -la
ls -la .github/workflows
open ".github/workflows/main.yml"
sudo apt update && sudo apt install -y gettext libpcre2-dev python3-pip tmux g++-multilib clang llvm-symbolizer
apt update && apt install -y gettext libpcre2-dev python3-pip tmux g++-multilib clang llvm-symbolizer
pip3 install pexpect
apt install -y python3-pip
pip3 install pexpect
mkdir -p build && cd build
cmake ..
apt install -y cmake
cmake ..
apt install -y rustc
cmake ..
apt install -y cargo
cmake ..
make
make test
