ls -la
ls -la .github/workflows
open ".github/workflows/main.yml"
sudo apt update && sudo apt install -y gettext libpcre2-dev python3-pip tmux
apt update && apt install -y gettext libpcre2-dev python3-pip tmux
pip3 install pexpect
locale-gen fr_FR.UTF-8
apt install -y locales && locale-gen fr_FR.UTF-8
cmake --version
apt install -y cmake
mkdir build && cd build
cmake ..
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source $HOME/.cargo/env
cmake ..
make
make test
ctest --output-on-failure -R "cd.fish|path.fish"
search_file 'cd.fish|path.fish' .github/workflows/main.yml
open ".github/workflows/main.yml"
ls -la .github/workflows/
cd .. && ls -la
open "README.rst"
open "CMakeLists.txt"
open "cmake/Tests.cmake"
