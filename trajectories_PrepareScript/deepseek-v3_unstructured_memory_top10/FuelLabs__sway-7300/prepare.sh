ls
open "Cargo.toml"
rustc --version
curl https://sh.rustup.rs -sSf | sh -s -- -y
apt-get update && apt-get install -y curl
apt-get install -y curl
curl https://sh.rustup.rs -sSf | sh -s -- -y
curl https://sh.rustup.rs -sSf | sh -s -- -y
. $HOME/.cargo/env
rustc --version && cargo --version
apt-get install -y libssl-dev gcc make
cargo install --locked --path ./forc
cargo test
df -h
rm -rf target
cargo test
apt-get clean && rm -rf /var/lib/apt/lists/*
df -h
cargo test --test-threads=1
cargo test -- --test-threads=1
du -sh /
curl -L https://github.com/FuelLabs/fuel-core/releases/download/v0.10.1/fuel-core-0.10.1-linux-x86_64.tar.gz | tar -xz
curl -L https://github.com/FuelLabs/fuel-core/releases/download/v0.10.1/fuel-core-0.10.1-linux-x86_64.tar.gz | tar -xz
curl -s https://api.github.com/repos/FuelLabs/fuel-core/releases/latest | grep -o 'browser_download_url.*linux-x86_64.tar.gz' | cut -d '"' -f 4
curl -s https://api.github.com/repos/FuelLabs/fuel-core/releases/latest | grep -o 'browser_download_url.*' | head -n 1 | cut -d '"' -f 4
curl -L https://github.com/FuelLabs/fuel-core/releases/latest/download/fuel-core-linux-x86_64.tar.gz | tar -xz
cargo test -- --skip fuel_core
