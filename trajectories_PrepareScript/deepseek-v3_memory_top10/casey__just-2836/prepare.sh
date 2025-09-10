ls -la
ls -la .github/workflows
open ".github/workflows/ci.yaml"
scroll_down
curl https://sh.rustup.rs -sSf | sh -s -- -y --default-toolchain 1.77
apt-get update && apt-get install -y curl
curl https://sh.rustup.rs -sSf | sh -s -- -y --default-toolchain 1.77
apt-get install -y ca-certificates && update-ca-certificates
curl https://sh.rustup.rs -sSf | sh -s -- -y
rustup toolchain install 1.77
. $HOME/.cargo/env
rustup toolchain install 1.77
rustup default 1.77
apt-get install -y ripgrep shellcheck
cargo --version && rustc --version
cargo test --all
apt-get install -y build-essential
cargo test --all
apt-get install -y sh
apt-get install -y dash
cargo test --all
ls -la /bin/sh
export TEST_ENV_VAR=test_value && cargo test --all
/bin/sh -c "echo hello"
cargo test backticks::trailing_newlines_are_stripped -- --nocapture
open "tests/backticks.rs"
apt-get install -y python3
cargo test backticks::trailing_newlines_are_stripped -- --nocapture
cargo test --all
export TEST_ENV_VAR=test_value && cargo test functions::env_var_functions -- --nocapture
open "tests/functions.rs"
export USER=test_user && cargo test functions::env_var_functions -- --nocapture
cargo test --all
open "tests/misc.rs"
scroll_down
goto 372
cargo test misc::backtick_code_interpolation -- --nocapture
cargo test --all
