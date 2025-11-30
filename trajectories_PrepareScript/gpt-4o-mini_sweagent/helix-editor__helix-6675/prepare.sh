find_file '*.yml' .
open ".github/workflows/build.yml"
find_file Cargo.toml .
open "/testbed/Cargo.toml"
apt update
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
wget -qO- https://sh.rustup.rs | sh -s -- -y
cargo test --workspace
find_file 'README*' .
open "/testbed/README.md"
open "/testbed/helix-tui/README.md"
open "/testbed/runtime/themes/README.md"
find_file '*.*' /testbed/runtime
create run_tests.sh
insert '#!/bin/bash
cargo test --workspace
cargo integration-test
'
chmod +x run_tests.sh
./run_tests.sh
