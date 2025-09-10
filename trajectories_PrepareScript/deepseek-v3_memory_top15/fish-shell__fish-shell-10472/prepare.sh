ls -la
ls -la .github/workflows
open ".github/workflows/main.yml"
sudo apt update && sudo apt install -y gettext libpcre2-dev python3-pip tmux g++-multilib clang llvm-symbolizer
apt update && apt install -y gettext libpcre2-dev python3-pip tmux g++-multilib clang llvm-symbolizer
pip3 install pexpect
apt install -y python3-pip
pip3 install pexpect
apt install -y cmake make
apt install -y ncurses coreutils findutils awk sed grep bash gcc g++ libc6-dev libstdc++6 zlib1g-dev libssl-dev
apt install -y libncurses5-dev gawk coreutils findutils sed grep bash gcc g++ libc6-dev libstdc++6 zlib1g-dev libssl-dev
ls -la CMakeLists.txt
mkdir -p build && cd build && cmake ..
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
apt install -y curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source $HOME/.cargo/env
cmake ..
make
make test
ctest --output-on-failure -R "cd.fish|path.fish"
pwd && ls -la
ls -la /tmp
chmod -R 777 /tmp/fish_test_dir_iter.x12uIT /tmp/fish_test_history.IuOuWc
ctest --output-on-failure -R "cd.fish|path.fish"
