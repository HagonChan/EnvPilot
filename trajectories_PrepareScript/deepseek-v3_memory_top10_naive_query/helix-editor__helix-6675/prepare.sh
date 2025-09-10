ls -la
open "rust-toolchain.toml"
ls -la .github/workflows
open ".github/workflows/build.yml"
curl https://sh.rustup.rs -sSf | sh -s -- -y --default-toolchain 1.65.0
apt-get update && apt-get install -y curl
curl https://sh.rustup.rs -sSf | sh -s -- -y --default-toolchain 1.65.0
. $HOME/.cargo/env
apt-get install -y libssl-dev pkg-config build-essential
rustc --version
cargo test --workspace
cargo test --lib
open "Cargo.toml"
cargo test --package helix-core
apt-get install -y tree-sitter
apt-get install -y npm
npm install -g tree-sitter
tree-sitter --version
npm bin -g
export PATH=$PATH:/usr/local/bin && tree-sitter --version
ls -la /usr/local/bin
git clone https://github.com/tree-sitter/tree-sitter.git && cd tree-sitter && make && make install
tree-sitter --version
find /usr -name tree-sitter
export PATH=$PATH:/usr/local/lib/node_modules/tree-sitter/bin && tree-sitter --version
ls -la /usr/local/lib/node_modules/tree-sitter/bin
ls -la /usr/local/lib/node_modules/tree-sitter
npm install -g tree-sitter-cli
npm install -g n && n latest
node --version
npm install -g tree-sitter-cli
apt-get install -y --reinstall npm
npm install -g tree-sitter-cli
cargo test --package helix-core
cargo test --package helix-core --lib
cargo test --package helix-core --lib --no-default-features
