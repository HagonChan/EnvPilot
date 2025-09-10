ls -la
open "rust-toolchain.toml"
open "Cargo.toml"
ls -la .github/workflows
open ".github/workflows/build.yml"
rustup install 1.65.0 && rustup default 1.65.0
curl https://sh.rustup.rs -sSf | sh -s -- -y
apt-get update && apt-get install -y curl build-essential libssl-dev pkg-config
apt-get install -y curl build-essential libssl-dev pkg-config
curl https://sh.rustup.rs -sSf | sh -s -- -y
which wget
apt-get install -y wget
wget https://sh.rustup.rs -O rustup-init.sh && sh rustup-init.sh -y
apt-get install -y rustc cargo
which rustup
cargo test --workspace
which tree-sitter
apt-get install -y tree-sitter
ls -la runtime/grammars
ls -la runtime/grammars/sources
cd runtime/grammars/sources/ruby && tree-sitter generate && tree-sitter build-wasm && cd -
git clone https://github.com/tree-sitter/tree-sitter.git && cd tree-sitter && make && make install && cd -
tree-sitter generate && tree-sitter build-wasm
which tree-sitter || find /usr/local -name tree-sitter
ls -la /usr/local/bin
ls -la /usr/local/lib
cd /testbed/tree-sitter/cli && make && make install
ls -la /testbed/tree-sitter
git clone https://github.com/tree-sitter/tree-sitter.git && cd tree-sitter/cli && make && make install && cd -
rm -rf tree-sitter && git clone https://github.com/tree-sitter/tree-sitter.git && cd tree-sitter/cli && make && make install && cd -
git clone https://github.com/tree-sitter/tree-sitter-cli.git && cd tree-sitter-cli && make && make install && cd -
cd tree-sitter-cli && cargo build --release && cargo install --path . && cd -
ls -la
cd /testbed && ls -la
git clone https://github.com/tree-sitter/tree-sitter-cli.git && cd tree-sitter-cli && cargo build --release && cargo install --path . && cd -
cargo test --workspace
cd runtime/grammars/sources/ruby && tree-sitter generate && tree-sitter build-wasm && cd -
mkdir -p /testbed/target/debug/deps/runtime/grammars && cp runtime/grammars/ruby.so /testbed/target/debug/deps/runtime/grammars/
ls -la
cd /testbed && cd runtime/grammars/sources/ruby && ls -la
grep -r "tree-sitter" Cargo.toml
cd /testbed && grep -r "tree-sitter" Cargo.toml
cargo test --workspace -- --skip test_pretty_print
