ls -la
open "rust-toolchain.toml"
ls -la .github/workflows
open ".github/workflows/build.yml"
rustup install 1.65.0 && rustup default 1.65.0
curl https://sh.rustup.rs -sSf | sh -s -- -y
apt-get update && apt-get install -y curl libssl-dev pkg-config build-essential
curl https://sh.rustup.rs -sSf | sh -s -- -y
rustup install 1.65.0 && rustup default 1.65.0
. $HOME/.cargo/env && rustup install 1.65.0 && rustup default 1.65.0
rustc --version && cargo --version
rustup component add rustfmt rust-src
cargo test --workspace
cargo build
open "Cargo.toml"
cargo build --package helix-term
open "helix-term/Cargo.toml"
apt-get install -y clang llvm
cargo build --package helix-term
cargo build --package helix-core
cargo test --package helix-core
ls -la runtime/grammars
cargo xtask build-grammars
open "xtask/src/main.rs"
open "README.md"
ls -la runtime/queries
apt-get install -y tree-sitter
apt-get install -y npm nodejs
npm install -g tree-sitter-cli
curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && nvm install 16
npm install -g tree-sitter-cli
git clone https://github.com/tree-sitter/tree-sitter.git && cd tree-sitter && make && make install
cd .. && cargo build --package helix-core
cargo test --package helix-core
cargo test --workspace
