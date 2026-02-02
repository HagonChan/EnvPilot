ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
search_file test .github/workflows/ci.yml
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
apt-get update && apt-get install -y curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source $HOME/.cargo/env
cargo install cargo-nextest
rustup update stable
cargo install cargo-nextest
cargo install cargo-nextest --version 0.9.114
cargo install cargo-nextest --version 0.9.114 --locked
apt-get install -y build-essential pkg-config libssl-dev python3-dev python3-pip
cargo install cargo-nextest --version 0.9.114 --locked
apt-get install -y python3.12 python3.12-dev python3.12-venv
add-apt-repository ppa:deadsnakes/ppa -y && apt-get update
apt-get install -y software-properties-common
add-apt-repository ppa:deadsnakes/ppa -y && apt-get update
apt-get install -y python3.11 python3.11-dev python3.11-venv
pip3.11 install uv
python3.11 -m ensurepip --upgrade
python3.11 -m pip install uv
ls -la
open "pyproject.toml"
cat pyproject.toml
python3.11 -m pip install maturin
maturin build --release
maturin build --release
maturin build
cargo config --global net.git-fetch-with-cli true
cargo config --global net.git-fetch-with-cli true
ls -la ~/.cargo
mkdir -p ~/.cargo && echo '[net]\ngit-fetch-with-cli = true' > ~/.cargo/config.toml
maturin build
echo '[net]\ngit-fetch-with-cli = true' > ~/.cargo/config.toml
cat ~/.cargo/config.toml
echo '[net]' > ~/.cargo/config.toml && echo 'git-fetch-with-cli = true' >> ~/.cargo/config.toml
cat ~/.cargo/config.toml
maturin build
cargo nextest run
