ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
open "ci_checks.sh"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
apt-get update && apt-get install -y curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
rustup install 1.86.0
source $HOME/.cargo/env
rustup install 1.86.0
rustup default 1.86.0
apt-get update && apt-get install -y libssl-dev gcc make
chmod +x ci_checks.sh && ./ci_checks.sh
cargo install cargo-sort
./ci_checks.sh
cargo sort --workspace
cargo fmt --all
./ci_checks.sh
cargo install fuel-core --locked
curl -sSfL https://github.com/FuelLabs/fuel-core/releases/latest/download/fuel-core-install.sh | sh
curl -sSfL https://github.com/FuelLabs/fuel-core/releases/download/v0.46.0/fuel-core-v0.46.0-x86_64-unknown-linux-gnu.tar.gz | tar -xz
wget https://github.com/FuelLabs/fuel-core/releases/download/v0.46.0/fuel-core-v0.46.0-x86_64-unknown-linux-gnu.tar.gz && tar -xzf fuel-core-v0.46.0-x86_64-unknown-linux-gnu.tar.gz
apt-get update && apt-get install -y wget
apt-get clean
apt-get update && apt-get install -y wget
df -h
du -sh /var/log/*
du -sh /* | sort -rh | head -n 10
ls -la /root
du -sh /root/.cache
cargo test
