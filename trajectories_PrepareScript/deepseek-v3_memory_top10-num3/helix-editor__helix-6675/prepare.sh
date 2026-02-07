ls
open "rust-toolchain.toml"
open "Cargo.toml"
open "README.md"
ls .github/workflows
open ".github/workflows/build.yml"
apt-get update && apt-get install -y git tree-sitter build-essential pkg-config libssl-dev
apt-get install -y git build-essential pkg-config libssl-dev
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --default-toolchain 1.65.0
apt-get install -y curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --default-toolchain 1.65.0
source $HOME/.cargo/env
cargo build
cargo test --workspace
git clone https://github.com/tree-sitter/tree-sitter.git && cd tree-sitter && make && make install
cd .. && cargo test --workspace
git clone https://github.com/tree-sitter/tree-sitter-rust && cd tree-sitter-rust && tree-sitter generate && tree-sitter build-wasm && cd ..
export PATH=$PATH:/usr/local/bin && cd tree-sitter-rust && tree-sitter generate && tree-sitter build-wasm && cd ..
git clone https://github.com/tree-sitter/tree-sitter-rust && cd tree-sitter-rust && export PATH=$PATH:/usr/local/bin && tree-sitter generate && tree-sitter build-wasm && cd ..
which tree-sitter || find /usr -name tree-sitter
cd .. && git clone https://github.com/tree-sitter/tree-sitter.git && cd tree-sitter && make && make install && cd ..
which tree-sitter
export PATH=$PATH:/usr/local/bin && which tree-sitter
find /usr -name tree-sitter
cd tree-sitter && make clean && make && make install PREFIX=/usr/local && cd ..
find /usr/local -name tree-sitter
cd tree-sitter && make clean && make && make install PREFIX=/usr/local && cd ..
cd tree-sitter-rust && tree-sitter generate && tree-sitter build-wasm && cd ..
ls tree-sitter-rust
git clone https://github.com/tree-sitter/tree-sitter-rust && cd tree-sitter-rust && cd ..
ls tree-sitter-rust
open "tree-sitter-rust/Makefile"
ls tree-sitter-rust/src
cd tree-sitter-rust && make && make install && cd ..
cd .. && cargo test --workspace
open "../Cargo.toml"
edit '[workspace]
members = [
  "helix-core",
  "helix-view",
  "helix-term",
  "helix-tui",
  "helix-lsp",
  "helix-dap",
  "helix-loader",
  "helix-vcs",
  "helix-parsec",
  "xtask",
]

default-members = [
  "helix-term"
]' '[workspace]
members = [
  "helix-core",
  "helix-view",
  "helix-term",
  "helix-tui",
  "helix-lsp",
  "helix-dap",
  "helix-loader",
  "helix-vcs",
  "helix-parsec",
  "xtask",
]

exclude = [
  "tree-sitter-rust"
]

default-members = [
  "helix-term"
]'
cd .. && cargo test --workspace
mkdir -p /testbed/target/debug/deps/runtime/grammars && cp /usr/local/lib/libtree-sitter-rust.so /testbed/target/debug/deps/runtime/grammars/rust.so
cargo test --workspace
cd tree-sitter-rust && grep -i version Cargo.toml && cd ..
rm -rf tree-sitter-rust && git clone --branch v0.20.0 https://github.com/tree-sitter/tree-sitter-rust && cd tree-sitter-rust && make && make install && cd ..
rm -rf tree-sitter-rust && git clone --branch v0.20.0 https://github.com/tree-sitter/tree-sitter-rust && cd tree-sitter-rust && make && make install && cd ..
rm -rf tree-sitter-rust && git clone --branch v0.20.0 https://github.com/tree-sitter/tree-sitter-rust && cd tree-sitter-rust && make && make install && cd ..
open "helix-core/src/syntax.rs"
find . -name "rust.so"
file ./target/debug/deps/runtime/grammars/rust.so
apt-get install -y file
file ./target/debug/deps/runtime/grammars/rust.so

