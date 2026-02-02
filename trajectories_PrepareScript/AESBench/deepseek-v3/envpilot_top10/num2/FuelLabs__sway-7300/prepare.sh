ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --default-toolchain 1.86.0
apt-get update && apt-get install -y curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --default-toolchain 1.86.0
. $HOME/.cargo/env
rustc --version && cargo --version
apt-get install -y libssl-dev gcc make
cargo install --locked --path ./forc
cargo test
which fuel-core
search_file fuel-core .github/workflows/ci.yml
toml get Cargo.toml workspace.dependencies.fuel-core-client.version | tr -d '"'
open "Cargo.toml"
curl -sSLf https://github.com/FuelLabs/fuel-core/releases/download/v0.44.0/fuel-core-0.44.0-x86_64-unknown-linux-gnu.tar.gz -L -o fuel-core.tar.gz && tar -xvf fuel-core.tar.gz && chmod +x fuel-core-0.44.0-x86_64-unknown-linux-gnu/fuel-core && mv fuel-core-0.44.0-x86_64-unknown-linux-gnu/fuel-core /usr/local/bin/fuel-core
fuel-core --version
cargo test
fuel-core run --db-type in-memory &
cargo test
sleep 5 && cargo test
netstat -tuln | grep 4000
ss -tuln | grep 4000
apt-get install -y net-tools
ps aux | grep fuel-core
tail -n 20 /var/log/fuel-core.log
fuel-core run --db-type in-memory > fuel-core.log 2>&1 &
cat fuel-core.log
pkill -f fuel-core
fuel-core run --db-type in-memory > fuel-core.log 2>&1 &
tail -n 20 fuel-core.log
cargo test
curl -X POST -H "Content-Type: application/json" --data '{"query":"query { nodeInfo { name } }"}' http://localhost:4000/graphql
search_file fuel-core Cargo.toml
find_file '*test*.rs'
open "/testbed/forc-plugins/forc-client/src/op/call/call_function.rs"
export FUEL_CORE_NODE_URL=http://localhost:4000 && cargo test
search_file fuel-core /testbed/forc-plugins/forc-client/src/op/call/call_function.rs
search_file node /testbed/forc-plugins/forc-client/src/op/call/call_function.rs
search_file provider /testbed/forc-plugins/forc-client/src/op/call/call_function.rs
search_file setup_test_provider /testbed/forc-plugins/forc-client/src/op/call/call_function.rs
search_file setup_test_provider /testbed/forc-plugins/forc-client/src/lib.rs
search_file use /testbed/forc-plugins/forc-client/src/op/call/call_function.rs
edit 'let node_url = provider.url();' 'let node_url = "http://localhost:4000";' True
cargo test
cat fuel-core.log
pkill -f fuel-core && fuel-core run --db-type in-memory --bind 0.0.0.0 > fuel-core.log 2>&1 &
curl -X POST -H "Content-Type: application/json" --data '{"query":"query { nodeInfo { name } }"}' http://0.0.0.0:4000/graphql
edit 'let node_url = "http://localhost:4000";' 'let node_url = "http://0.0.0.0:4000";' True

