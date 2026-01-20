ls -la
ls -la .github/workflows
open ".github/workflows/main.yml"
sudo apt update && sudo apt install -y gettext libpcre2-dev python3-pip tmux
apt update && apt install -y gettext libpcre2-dev python3-pip tmux
pip3 install pexpect
mkdir build && cd build && cmake ..
apt install -y cmake
cmake ..
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source $HOME/.cargo/env
cmake ..
make VERBOSE=1
make VERBOSE=1 test
ctest --output-on-failure -R "cd.fish|path.fish"
open "checks/cd.fish"
find_file cd.fish
open "/testbed/build/tests/checks/cd.fish"
../test/root/bin/fish -C 'set -g fish ../test/root/bin/fish' /testbed/build/tests/checks/cd.fish
find_file fish
./fish -C 'set -g fish ./fish' /testbed/build/tests/checks/cd.fish
ls -la /tmp/tmp.*
