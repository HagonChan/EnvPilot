ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
open "justfile"
which nix
sh <(curl -L https://nixos.org/nix/install) --no-daemon
apt-get update && apt-get install -y curl
sh <(curl -L https://nixos.org/nix/install) --no-daemon
apt-get install -y xz-utils
sh <(curl -L https://nixos.org/nix/install) --no-daemon
groupadd nixbld
sh <(curl -L https://nixos.org/nix/install) --no-daemon
useradd -g nixbld nixbld1
sh <(curl -L https://nixos.org/nix/install) --no-daemon
cargo install just
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source $HOME/.cargo/env
cargo install just
rustup update
curl --proto '=https' --tlsv1.2 -sSf https://just.systems/install.sh | bash -s -- --to /usr/local/bin
curl --proto '=https' --tlsv1.2 -sSf https://just.systems/install.sh | bash -s -- --to /usr/local/bin
which just
just --version
just test
cargo nextest run --all-features --no-fail-fast --workspace
cargo install cargo-nextest
cargo test --all-features --no-fail-fast --workspace
cargo test --no-fail-fast --workspace
apt-get install -y build-essential
cargo test --no-fail-fast --workspace

