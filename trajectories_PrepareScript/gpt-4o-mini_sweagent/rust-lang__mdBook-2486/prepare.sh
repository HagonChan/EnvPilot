
find_file '*.yml'
open "/testbed/.github/workflows/main.yml"
find_file install-rust.sh ci
open "/testbed/ci/install-rust.sh"
find_file Cargo.toml
open "/testbed/Cargo.toml"
apt update -y
bash ci/install-rust.sh stable
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
wget https://sh.rustup.rs -O rustup-init.sh && bash rustup-init.sh -y
apt install rustc -y
cargo build
apt search cargo
apt install cargo -y
cargo build
cargo test
