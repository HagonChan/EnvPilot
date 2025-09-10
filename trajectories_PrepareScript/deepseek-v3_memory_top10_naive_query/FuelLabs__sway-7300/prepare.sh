ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
rustc --version
curl https://sh.rustup.rs -sSf | sh -s -- -y
apt-get update && apt-get install -y curl
curl https://sh.rustup.rs -sSf | sh -s -- -y
rustup install 1.86.0 && rustup default 1.86.0
. "$HOME/.cargo/env"
rustup install 1.86.0 && rustup default 1.86.0
rustc --version
apt-get install -y libssl-dev gcc make
cargo install --locked --path ./forc
cargo test
search_file fuel-core .github/workflows/ci.yml
toml get Cargo.toml workspace.dependencies.fuel-core-client.version | tr -d '"'
open "Cargo.toml"
curl -sSLf https://github.com/FuelLabs/fuel-core/releases/download/v0.44.0/fuel-core-0.44.0-x86_64-unknown-linux-gnu.tar.gz -L -o fuel-core.tar.gz
cargo install --locked fuel-core-bin
cargo test --lib
curl -I https://github.com
curl -sSLf https://github.com/FuelLabs/fuel-core/releases/download/v0.44.0/fuel-core-0.44.0-x86_64-unknown-linux-gnu.tar.gz -L -o fuel-core.tar.gz
tar -xzf fuel-core.tar.gz && mv fuel-core-0.44.0-x86_64-unknown-linux-gnu/fuel-core /usr/local/bin/ && chmod +x /usr/local/bin/fuel-core
fuel-core --version
cargo test --lib
search_file fuel-core .github/workflows/ci.yml
fuel-core run --db-type in-memory --debug &
sleep 5 && cargo test --lib
ps aux | grep fuel-core
netstat -tlnp | grep fuel-core
ss -tlnp | grep fuel-core
apt-get install -y iproute2 net-tools
netstat -tlnp | grep fuel-core
curl -s http://localhost:4000/graphql | head -10
cargo test --lib
search_file 127.0.0.1:4000 .github/workflows/ci.yml
search_file FUEL_CORE .github/workflows/ci.yml
find . -name "*.toml" -o -name "*.env" -o -name "*.config" | head -10
search_file env: .github/workflows/ci.yml
goto 348
scroll_down
open ".github/workflows/ci.yml"
search_file FUEL_CORE .github/workflows/ci.yml
search_file 127.0.0.1:4000 .github/workflows/ci.yml
search_file env: .github/workflows/ci.yml
goto 348
cargo run --locked --release --bin test -- --locked
cargo test
cargo test --workspace --exclude test

