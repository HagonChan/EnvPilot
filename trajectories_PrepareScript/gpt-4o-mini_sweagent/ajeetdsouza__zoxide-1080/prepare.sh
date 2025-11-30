ls -R
open "Cargo.toml"
cargo build --release
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
wget https://sh.rustup.rs -O rustup-init.sh
apt update
apt install rustc cargo

