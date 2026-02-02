ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
open "Cargo.toml"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- --default-toolchain 1.88.0 -y
apt update && apt install -y curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- --default-toolchain 1.88.0 -y
source $HOME/.cargo/env
rustc --version
apt update && apt install -y gcc-multilib libssl-dev:i386 pkg-config:i386
dpkg --add-architecture i386 && apt update
apt install -y gcc-multilib libssl-dev:i386 pkg-config:i386
cargo test --workspace --no-fail-fast
cargo config --global net.git-fetch-with-cli true
mkdir -p ~/.cargo && echo '[net]
git-fetch-with-cli = true' > ~/.cargo/config.toml
cargo test --workspace --no-fail-fast
git clone https://github.com/typst/codex.git ~/.cargo/git/db/codex-aa81a4b306813040
rm -rf ~/.cargo/git/db/codex-aa81a4b306813040 && git clone https://github.com/typst/codex.git ~/.cargo/git/db/codex-aa81a4b306813040
cargo test --workspace --no-fail-fast
apt install -y libssl-dev
cargo test --workspace --no-fail-fast
