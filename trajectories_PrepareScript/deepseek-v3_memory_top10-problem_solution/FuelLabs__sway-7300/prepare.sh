ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
rustc --version
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
apt-get update && apt-get install -y curl tar chmod mv libssl-dev gcc make
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
which curl
dpkg -L curl
apt-get install -y curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
rustup install 1.86.0
source $HOME/.cargo/env
rustup install 1.86.0
rustup default 1.86.0
rustc --version && cargo --version
cargo install --locked --path ./forc
apt-get install -y libssl-dev gcc make
cargo install --locked --path ./forc
cargo test
which fuel-core
cargo install fuel-core
cargo install fuel-core --version 0.46.0
find . -name fuel-core
open ".github/workflows/ci.yml"
open "README.md"
cargo test
curl -s https://api.github.com/repos/FuelLabs/fuel-core/releases/latest | grep browser_download_url | grep linux | cut -d '"' -f 4 | wget -qi -
apt-get install -y wget
curl -s https://api.github.com/repos/FuelLabs/fuel-core/releases/latest | grep browser_download_url | grep linux | cut -d '"' -f 4 | wget -qi -
wget https://github.com/FuelLabs/fuel-core/releases/download/v0.46.0/fuel-core-linux-x86_64.tar.gz
curl -s https://api.github.com/repos/FuelLabs/fuel-core/releases | grep tag_name | head -n 1
wget https://github.com/FuelLabs/fuel-core/releases/download/v0.47.1/fuel-core-linux-x86_64.tar.gz
curl -s https://api.github.com/repos/FuelLabs/fuel-core/releases/tags/v0.47.1 | grep browser_download_url
wget https://github.com/FuelLabs/fuel-core/releases/download/v0.47.1/fuel-core-0.47.1-x86_64-unknown-linux-gnu.tar.gz
tar -xzf fuel-core-0.47.1-x86_64-unknown-linux-gnu.tar.gz && mv fuel-core-0.47.1-x86_64-unknown-linux-gnu/fuel-core /usr/local/bin/
fuel-core --version
cargo test
wget https://github.com/FuelLabs/fuel-core/releases/download/v0.44.0/fuel-core-0.44.0-x86_64-unknown-linux-gnu.tar.gz
tar -xzf fuel-core-0.44.0-x86_64-unknown-linux-gnu.tar.gz && mv fuel-core-0.44.0-x86_64-unknown-linux-gnu/fuel-core /usr/local/bin/
fuel-core --version
cargo test
