ls
open "README.md"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
apt-get update && apt-get install -y curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
. $HOME/.cargo/env
rustc --version
apt-get install -y libssl-dev gcc make
cargo install --locked --path ./forc
cargo test
cargo install fuel-core
git clone https://github.com/FuelLabs/fuel-core.git
git clone https://github.com/FuelLabs/fuel-core.git
curl -L https://github.com/FuelLabs/fuel-core/releases/download/v0.47.1/fuel-core-0.47.1-linux-x86_64.tar.gz -o fuel-core.tar.gz
cargo test
edit '## Build and Test' '## Build and Test

**Note**: Some tests require `fuel-core` to be installed and available in the `PATH`. Due to connection issues, `fuel-core` could not be installed in this environment. The following tests failed as a result:
- `op::call::call_function::tests::contract_call_with_abi`
- `op::call::call_function::tests::contract_call_with_abi_complex`
- `op::call::call_function::tests::contract_value_forwarding`
- `op::call::list_functions::tests::test_list_contract_functions`
- `op::call::transfer::tests::test_transfer_function_to_contract`
- `op::call::transfer::tests::test_transfer_function_to_recipient`'
open "README.md"
edit '## Building from Source' '## Building from Source

### Note on Running Tests

Some tests require `fuel-core` to be installed and available in the `PATH`. If you encounter test failures related to `fuel-core`, ensure it is installed. For installation instructions, refer to the [Fuel Core documentation](https://github.com/FuelLabs/fuel-core).

### Dependencies'
edit '### Dependencies

This section is for developing the Sway compiler and toolchain. For developing contracts and using Sway, see the above documentation section.

### Dependencies' '### Dependencies

This section is for developing the Sway compiler and toolchain. For developing contracts and using Sway, see the above documentation section.'
