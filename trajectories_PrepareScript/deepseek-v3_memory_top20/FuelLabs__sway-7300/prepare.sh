ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
rustc --version
curl https://sh.rustup.rs -sSf | sh -s -- -y --default-toolchain 1.86.0
apt-get update && apt-get install -y curl
curl https://sh.rustup.rs -sSf | sh -s -- -y --default-toolchain 1.86.0
. $HOME/.cargo/env
rustc --version && cargo --version
apt-get install -y libssl-dev gcc make
apt-get clean
apt-get install -y libssl-dev gcc make
apt-get autoremove -y
cargo install --locked --path ./forc
export CARGO_HTTP_CHECK_REVOKE=false && cargo install --locked --path ./forc
cargo install --locked --offline --path ./forc
cargo test
