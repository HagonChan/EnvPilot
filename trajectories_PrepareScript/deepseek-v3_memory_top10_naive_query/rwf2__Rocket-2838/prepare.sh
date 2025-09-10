ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
apt-get update && apt-get install -y curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
apt-get install -y rustc cargo
rustc --version && cargo --version
ls -la rust-toolchain.toml
apt-get install -y libmysqlclient-dev libpq-dev libsqlite3-dev
cargo test
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
apt-get update && apt-get install -y --only-upgrade rustc cargo
apt-get install -y --only-upgrade rustc cargo
rustup toolchain install nightly
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
apt-get install -y rustc-nightly cargo-nightly
cargo test --workspace --exclude rayon-demo
cargo update -p icu_normalizer_data --precise 1.0.0
cargo test --lib --examples
find . -name "*.rs" | head -n 10
cargo test -p dyn_templates
cat Cargo.toml
cargo test --manifest-path=contrib/dyn_templates/Cargo.toml
