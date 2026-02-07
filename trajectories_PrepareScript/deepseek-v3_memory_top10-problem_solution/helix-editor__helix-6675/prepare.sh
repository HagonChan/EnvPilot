ls -la
ls -la .github/workflows
open ".github/workflows/build.yml"
open "rust-toolchain.toml"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --default-toolchain 1.65.0
apt-get update && apt-get install -y curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --default-toolchain 1.65.0
source $HOME/.cargo/env
rustc --version
apt-get install -y git tree-sitter build-essential pkg-config libssl-dev
apt-get install -y git build-essential pkg-config libssl-dev
open "Cargo.toml"
cargo build
cargo test --workspace
git clone https://github.com/tree-sitter/tree-sitter.git && cd tree-sitter && make && make install
cd .. && git clone https://github.com/tree-sitter/tree-sitter-rust.git && cd tree-sitter-rust && tree-sitter generate
export PATH=$PATH:/usr/local/bin && tree-sitter generate
find / -name tree-sitter 2>/dev/null
export PATH=$PATH:/testbed/tree-sitter && tree-sitter generate
ls -la /testbed/tree-sitter
cd /testbed/tree-sitter && make && make install
open "/testbed/tree-sitter/README.md"
cd /testbed/tree-sitter/crates/cli && cargo build --release
cd /testbed
cargo test --workspace
git clone https://github.com/tree-sitter/tree-sitter-rust.git && cd tree-sitter-rust && tree-sitter generate
cd tree-sitter-rust && tree-sitter generate
open "helix-core/src/syntax.rs"
find /testbed -name syntax.rs
open "/testbed/helix-core/src/syntax.rs"
find /testbed -name mod.rs | grep test
open "/testbed/Cargo.toml"
search_file '#[test]' /testbed/helix-core/src/syntax.rs
search_file 'mod tests' /testbed/helix-core/src/syntax.rs
find /testbed -name tests
ls -la /testbed/helix-core/tests
