ls -la
ls -la .github/workflows
open ".github/workflows/build.yml"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
wget -O rustup-init.sh https://sh.rustup.rs && sh rustup-init.sh -y
apt update && apt install -y curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source $HOME/.cargo/env
cargo test --workspace
cargo config --global net.git-fetch-with-cli true
ls -la .cargo
open ".cargo/config.toml"
edit '[alias]
xtask = "run --package xtask --"
integration-test = "test --features integration --profile integration --workspace --test integration"' '[alias]
xtask = "run --package xtask --"
integration-test = "test --features integration --profile integration --workspace --test integration"

[net]
git-fetch-with-cli = true'
cargo test --workspace
edit '[alias]
xtask = "run --package xtask --"
integration-test = "test --features integration --profile integration --workspace --test integration"

[net]
git-fetch-with-cli = true' '[alias]
xtask = "run --package xtask --"
integration-test = "test --features integration --profile integration --workspace --test integration"

[net]
git-fetch-with-cli = true

[source.crates-io]
replace-with = '"'"'rsproxy'"'"'

[source.rsproxy]
registry = "https://rsproxy.cn/crates.io-index"'
cargo test --workspace
ls -la
cargo build --offline
ls -la ~/.cargo/registry
cargo vendor --help
cargo vendor
cargo test --workspace --offline
