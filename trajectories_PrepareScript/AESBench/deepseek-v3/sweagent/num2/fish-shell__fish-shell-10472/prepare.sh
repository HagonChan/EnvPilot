ls -la
ls -la .github
ls -la .github/workflows
open ".github/workflows/main.yml"
open "Cargo.toml"
sudo apt update && sudo apt install -y gettext libpcre2-dev python3-pip tmux
apt update && apt install -y gettext libpcre2-dev python3-pip tmux
pip3 install pexpect
mkdir build && cd build && cmake ..
apt install -y cmake
cmake ..
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source $HOME/.cargo/env
cmake ..
make
make test
ctest -V -R "cd.fish|path.fish"
git log -p -- tests/checks/cd.fish tests/checks/path.fish
grep -r "cd.fish" .github/
grep -r "cd.fish" .
ctest --rerun-failed --output-on-failure
open "tests/checks/cd.fish"
open "tests/checks/path.fish"
ctest --rerun-failed --output-on-failure --debug
grep -r "cd.fish" .github/
grep -r "cd.fish" .
ctest --rerun-failed --output-on-failure
open "tests/checks/cd.fish"
open "tests/checks/path.fish"
ctest --rerun-failed --output-on-failure --debug
grep -r "cd.fish" .github/
grep -r "cd.fish" .
ctest --rerun-failed --output-on-failure
open "tests/checks/cd.fish"
open "tests/checks/path.fish"
ctest --rerun-failed --output-on-failure --debug
grep -r "cd.fish" .github/
grep -r "cd.fish" .
ctest --rerun-failed --output-on-failure
open "tests/checks/cd.fish"
open "tests/checks/path.fish"
ctest --rerun-failed --output-on-failure --debug
grep -r "cd.fish" .github/
grep -r "cd.fish" .
ctest --rerun-failed --output-on-failure
open "tests/checks/cd.fish"
open "tests/checks/path.fish"
ctest --rerun-failed --output-on-failure --debug
grep -r "cd.fish" .github/

