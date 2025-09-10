ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
open "justfile"
cargo --version
curl https://sh.rustup.rs -sSf | sh -s -- -y
apt-get update && apt-get install -y curl
curl https://sh.rustup.rs -sSf | sh -s -- -y
curl -L https://sh.rustup.rs -o rustup.sh && chmod +x rustup.sh && ./rustup.sh -y
apt-get install -y wget && wget https://sh.rustup.rs -O rustup.sh && chmod +x rustup.sh && ./rustup.sh -y
ls -la /root/.cargo/bin/cargo
/root/.cargo/bin/cargo --version
/root/.cargo/bin/rustup default stable
/root/.cargo/bin/cargo --version
/root/.cargo/bin/cargo install just
/root/.cargo/bin/cargo install just --locked
wget https://github.com/casey/just/releases/download/1.42.4/just-1.42.4-x86_64-unknown-linux-musl.tar.gz && tar -xvf just-1.42.4-x86_64-unknown-linux-musl.tar.gz && mv just /usr/local/bin/
just --version
just test
open "justfile"
edit 'nix-shell --cores 0 --pure --run '"'"'cargo nextest run --all-features --no-fail-fast --workspace {{args}}'"'"'' 'cargo nextest run --all-features --no-fail-fast --workspace {{args}}' False
just test
edit 'cargo nextest run --all-features --no-fail-fast --workspace {{args}}' '/root/.cargo/bin/cargo nextest run --all-features --no-fail-fast --workspace {{args}}' False
just test
/root/.cargo/bin/cargo install cargo-nextest
edit '/root/.cargo/bin/cargo nextest run --all-features --no-fail-fast --workspace {{args}}' '/root/.cargo/bin/cargo test --all-features --no-fail-fast --workspace {{args}}' False
just test
open "Cargo.toml"
ls -la src/
edit '[lib]
doctest = false' '' False
just test
ls -la crates/
edit 'members = [".", "crates/*"]' 'members = ["."]' False
just test
edit 'clap_complete = "=4.5.48"' 'clap_complete = "4.5.48"' False
just test
edit 'clap_complete = "4.5.48"' 'clap_complete = "4.5.48"
clap_complete_fig = "4.5.48"
clap_complete_nushell = "4.5.48"' False
just test
edit 'clap_complete_fig = "4.5.48"' 'clap_complete_fig = "4.5.2"' False
edit 'clap_complete_nushell = "4.5.48"' 'clap_complete_nushell = "4.5.2"' False
just test
apt-get install -y build-essential
edit 'clap_complete = "4.5.48"' 'clap_complete = "4.5.57"' False
just test
/root/.cargo/bin/cargo clean
edit 'clap = { version = "4.0.0", features = ["derive", "env", "wrap_help"] }' 'clap = { version = "4.5.57", features = ["derive", "env", "wrap_help"] }' False
just test
edit 'clap = { version = "4.5.57", features = ["derive", "env", "wrap_help"] }' 'clap = { version = "4.5.45", features = ["derive", "env", "wrap_help"] }' False
edit 'clap_complete = "4.5.57"' 'clap_complete = "4.5.45"' False

