ls -la
ls -la .github/workflows
open ".github/workflows/main.yml"
sudo apt update && sudo apt install -y gettext libpcre2-dev python3-pip tmux g++-multilib clang llvm-symbolizer build-essential
apt update && apt install -y gettext libpcre2-dev python3-pip tmux g++-multilib clang llvm-symbolizer build-essential
pip3 install pexpect
apt install -y python3-pip
pip3 install pexpect
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --default-toolchain 1.70.0
apt install -y curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --default-toolchain 1.70.0
source $HOME/.cargo/env
mkdir -p build && cd build
cmake ..
apt install -y cmake
cmake ..
source $HOME/.cargo/env && rustc --version
cmake ..
make
make test
ctest --output-on-failure -R "cd.fish|path.fish|bind_mode_events.py"
open "checks/cd.fish"
cd .. && ls -la checks/
find_file cd.fish
open "tests/checks/cd.fish"
cd build && ctest -R cd.fish --output-on-failure
goto 140
mkdir -p /tmp/bad-perms && chmod -x /tmp/bad-perms && cd /tmp/bad-perms 2>&1
