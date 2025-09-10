ls -la
ls -la .github/workflows
open ".github/workflows/test.yml"
open "Cargo.toml"
rustc --version
curl https://sh.rustup.rs -sSf | sh -s -- -y
apt-get update && apt-get install -y curl
curl https://sh.rustup.rs -sSf | sh -s -- -y
source $HOME/.cargo/env
rustc --version
rustup install 1.85.0 && rustup default 1.85.0
rustup install 1.85.0 && rustup default 1.85.0
apt-get install -y libxkbcommon-dev libgtk-3-dev
cargo build --workspace
rustup default stable && cargo build --workspace
apt-get install -y build-essential
cargo build --workspace
apt-get install -y libssl-dev
cargo build --workspace
df -h
apt-get clean
du -sh * | sort -rh | head -n 10
cargo clean
df -h
cargo build --workspace
cargo test --workspace --all-features
cargo clean
df -h
cargo test --workspace --all-features
