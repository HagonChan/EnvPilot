ls -la
ls -la .github
ls -la .github/workflows
open ".github/workflows/ci.yml"
apt-get update && apt-get install -y gcc-multilib libssl-dev:i386 pkg-config:i386
dpkg --add-architecture i386 && apt-get update
apt-get install -y gcc-multilib libssl-dev:i386 pkg-config:i386
curl https://sh.rustup.rs -sSf | sh -s -- -y
wget -qO- https://sh.rustup.rs | sh -s -- -y
apt-get install -y curl
curl https://sh.rustup.rs -sSf | sh -s -- -y
rustup install 1.88.0
. "$HOME/.cargo/env"
rustup install 1.88.0
cargo test
apt-get install -y libssl-dev
cargo test
