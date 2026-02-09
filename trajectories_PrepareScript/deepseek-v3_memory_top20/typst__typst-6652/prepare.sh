ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
sudo apt update && sudo apt install -y build-essential libssl-dev pkg-config gcc-multilib libssl-dev:i386 pkg-config:i386
apt update && apt install -y build-essential libssl-dev pkg-config gcc-multilib libssl-dev:i386 pkg-config:i386
dpkg --add-architecture i386 && apt update && apt install -y gcc-multilib libssl-dev:i386 pkg-config:i386
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
apt install -y curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
rustup install 1.88.0 && rustup default 1.88.0
export PATH=$HOME/.cargo/bin:$PATH && rustup install 1.88.0 && rustup default 1.88.0
rustc --version && cargo --version
cargo install --locked typst-cli
apt install -y libssl-dev
cargo install --locked typst-cli
cargo test --workspace --no-fail-fast
