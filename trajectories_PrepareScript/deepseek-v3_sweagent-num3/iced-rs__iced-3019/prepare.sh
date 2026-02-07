ls -la
ls -la .github/workflows
open ".github/workflows/test.yml"
open "Cargo.toml"
sudo apt-get update && sudo apt-get install -y libxkbcommon-dev libgtk-3-dev
apt-get update && apt-get install -y libxkbcommon-dev libgtk-3-dev
cargo test --verbose --workspace -- --ignored
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
wget -qO- https://sh.rustup.rs | sh -s -- -y
apt-get install -y curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source $HOME/.cargo/env
rustc --version && cargo --version
cargo test --verbose --workspace -- --ignored
cargo config --global net.git-fetch-with-cli true
mkdir -p ~/.cargo && echo '[net]' > ~/.cargo/config.toml && echo 'git-fetch-with-cli = true' >> ~/.cargo/config.toml
cargo test --verbose --workspace -- --ignored
rustup update
apt-get install -y libjpeg-dev libpng-dev libtiff-dev libwebp-dev
cargo test --verbose --workspace -- --ignored
cargo test --verbose --workspace -- --ignored
grep -A 10 'error: could not compile `document-features`' /testbed/target/debug/build.log
cargo test --verbose --workspace -- --ignored 2>&1 | tee build.log
cargo update
cargo test --verbose --workspace -- --ignored
apt-get install -y libjpeg-dev libpng-dev libtiff-dev libwebp-dev
find /root/.cargo/registry/src -name "blurhash-*" -type d
open "/root/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/blurhash-0.2.3/build.rs"
cargo test --verbose --workspace -- --ignored
find /root/.cargo/registry/src -name "target-lexicon-*" -type d
open "/root/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/target-lexicon-0.12.16/build.rs"
export TARGET=x86_64-unknown-linux-gnu
cargo test --verbose --workspace -- --ignored
find /root/.cargo/registry/src -name "mime_guess-*" -type d
open "/root/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/mime_guess-2.0.5/build.rs"
cargo install phf
cargo update
cargo test --verbose --workspace -- --ignored
find /root/.cargo/registry/src -name "wgpu-*" -type d
open "/root/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/wgpu-26.0.1/build.rs"
cargo install cfg_aliases
cargo update
cargo test --verbose --workspace -- --ignored
find /root/.cargo/registry/src -name "palette-*" -type d
open "/root/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/palette-0.7.6/build.rs"
open "/root/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/palette-0.7.6/Cargo.toml"
cargo install phf
cargo update
cargo test --verbose --workspace -- --ignored

