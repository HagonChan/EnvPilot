find_file '*.yml' .
open ".github/workflows/test.yml"
export DEBIAN_FRONTEND=noninteractive && apt-get -qq update && apt-get install -y libxkbcommon-dev libgtk-3-dev
cargo test --verbose --workspace -- --ignored
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
apt-get install -y curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source $HOME/.cargo/env
cargo test --verbose --workspace -- --ignored

cargo test --verbose --workspace --all-features -- --ignored

cargo test --verbose --workspace -- --ignored
goto 1
export RUSTFLAGS='--deny warnings' && export ICED_TEST_BACKEND='tiny-skia' && cargo test --verbose --workspace -- --ignored
rustup default beta && cargo test --verbose --workspace -- --ignored
rustup default beta && cargo test --verbose --workspace -- --ignored
rustup default beta && cargo test --verbose --workspace -- --ignored
rustup default stable && cargo test --verbose --workspace -- --ignored
rustup default stable && cargo test --verbose --workspace -- --ignored
rustup default stable && cargo test --verbose --workspace -- --ignored
rustup default stable && cargo test --verbose --workspace -- --ignored
rustup default stable && cargo test --verbose --workspace -- --ignored
rustup default stable && cargo test --verbose --workspace -- --ignored
rustup default stable && cargo test --verbose --workspace -- --ignored
rustup default stable && cargo test --verbose --workspace -- --ignored
rustup default stable && cargo test --verbose --workspace -- --ignored
rustup default stable && cargo test --verbose --workspace -- --ignored
rustup default stable && cargo test --verbose --workspace -- --ignored
rustup default stable && cargo test --verbose --workspace -- --ignored
rustup default stable && cargo test --verbose --workspace -- --ignored
rustup default stable && cargo test --verbose --workspace -- --ignored
rustup default stable && cargo test --verbose --workspace -- --ignored
rustup default stable && cargo test --verbose --workspace -- --ignored
rustup default stable && cargo test --verbose --workspace -- --ignored
rustup default stable && cargo test --verbose --workspace -- --ignored
rustup default stable && cargo test --verbose --workspace -- --ignored
rustup default stable && cargo test --verbose --workspace -- --ignored
rustup default stable && cargo test --verbose --workspace -- --ignored
rustup default stable && cargo test --verbose --workspace -- --ignored
rustup default stable && cargo test --verbose --workspace -- --ignored
rustup default stable && cargo test --verbose --workspace -- --ignored
rustup default stable && cargo test --verbose --workspace -- --ignored
rustup default stable && cargo test --verbose --workspace -- --ignored
rustup default stable && cargo test --verbose --workspace -- --ignored
rustup default stable && cargo test --verbose --workspace -- --ignored
rustup default stable && cargo test --verbose --workspace -- --ignored
rustup default stable && cargo test --verbose --workspace -- --ignored
rustup default stable && cargo test --verbose --workspace -- --ignored

