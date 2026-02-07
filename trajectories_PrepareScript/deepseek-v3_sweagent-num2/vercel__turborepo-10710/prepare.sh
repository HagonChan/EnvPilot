ls -la
ls -la .github/workflows
open ".github/workflows/turborepo-test.yml"
goto 200
open "./.github/actions/setup-turborepo-environment"
ls -la ./.github/actions/setup-turborepo-environment
open "./.github/actions/setup-turborepo-environment/action.yml"
open "./.github/actions/setup-node/action.yml"
open "./.github/actions/setup-rust/action.yml"
open "package.json"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
apt-get update && apt-get install -y curl
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
nvm install 22
npm install -g pnpm@8.14.0
node --version && pnpm --version
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source $HOME/.cargo/env && rustc --version && cargo --version
apt-get install -y lld protobuf-compiler
lld --version && protoc --version
find /usr -name protoc
/usr/bin/protoc --version
cargo install cargo-sweep
apt-get install -y capnproto
capnp --version
pnpm install
cargo fmt --check && cargo clippy --all-targets --all-features -- -D warnings && cargo check --all-targets --all-features
apt-get install -y libcurl4-openssl-dev libssl-dev pkg-config
cargo fmt --check && cargo clippy --all-targets --all-features -- -D warnings && cargo check --all-targets --all-features
rustup update && apt-get install -y libudev-dev libseccomp-dev
cargo fmt --check && cargo clippy --all-targets --all-features -- -D warnings && cargo check --all-targets --all-features
cargo clean
cargo fmt --check && cargo clippy --all-targets --all-features -- -D warnings && cargo check --all-targets --all-features
cargo build -v --manifest-path crates/serde/Cargo.toml
cargo build -v --features serde
cargo build -v
ld.lld --version
cargo build -v --no-default-features
cargo build -v --no-default-features --features "default"
rustup default stable
open "rust-toolchain.toml"
cat /root/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/nix-0.28.0/build.rs
cargo build -v --no-default-features --features "default"
cargo update -p portable-atomic -p nix
cargo update -p nix@0.28.0
cargo update -p portable-atomic
cargo build -v
cargo build -v --no-default-features
open "rust-toolchain.toml"

