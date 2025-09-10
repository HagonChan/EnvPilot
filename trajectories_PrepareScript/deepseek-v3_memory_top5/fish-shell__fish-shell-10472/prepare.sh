ls -la
ls -la .github/workflows
open ".github/workflows/main.yml"
apt-get update && apt-get install -y gettext libpcre2-dev python3-pip tmux g++-multilib clang llvm-symbolizer cmake make
apt-get install -y llvm && pip3 install pexpect
apt-get install -y python3-pip && pip3 install pexpect
mkdir build && cd build && cmake ..
apt-get install -y cmake
cmake ..
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
apt-get install -y curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source $HOME/.cargo/env
cmake ..
make
make test
ctest --output-on-failure -R "cd.fish|path.fish"
apt-get install -y gettext
cmake --build . && ctest --output-on-failure
ls -la /tmp
ctest --verbose -R "cd.fish|path.fish"
open "checks/cd.fish"
find_file cd.fish
open "/testbed/build/tests/checks/cd.fish"
ls -la /tmp
mkdir -p /tmp/bad-perms && chmod 000 /tmp/bad-perms
ctest --output-on-failure -R cd.fish
goto 153
mkdir -p /testbed/build/bad-perms && chmod -x /testbed/build/bad-perms
ctest --output-on-failure -R cd.fish
