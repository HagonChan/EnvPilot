ls -la
ls -la .github/workflows
open ".github/workflows/main.yml"
sudo apt update && sudo apt install -y gettext libpcre2-dev python3-pip tmux
apt update && apt install -y gettext libpcre2-dev python3-pip tmux
pip3 install pexpect
mkdir -p build && cd build && cmake ..
apt install -y cmake
cmake ..
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
. "$HOME/.cargo/env"
cmake ..
make VERBOSE=1
make VERBOSE=1 test
ctest --output-on-failure
ls -la /testbed/tests/checks/bad-perms
