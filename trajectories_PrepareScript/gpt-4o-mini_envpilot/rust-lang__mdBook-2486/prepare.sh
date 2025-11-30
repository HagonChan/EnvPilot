ls -la
ls -la .github
ls -la .github/workflows
open ".github/workflows/main.yml"
open "ci/install-rust.sh"
apt-get update -y && apt-get install -y musl-dev musl-tools gcc-aarch64-linux-gnu
bash ci/install-rust.sh 1.74.0 x86_64-unknown-linux-gnu
curl https://sh.rustup.rs -sSf | sh -s -- -y
apt-get install -y curl
curl https://sh.rustup.rs -sSf | sh -s -- -y
bash ci/install-rust.sh 1.74.0 x86_64-unknown-linux-gnu
. "$HOME/.cargo/env"
bash ci/install-rust.sh 1.74.0 x86_64-unknown-linux-gnu
cargo test --locked
