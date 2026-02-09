ls
ls .github/workflows
open ".github/workflows/ci.yaml"
scroll_down
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
apt-get update && apt-get install -y curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
. $HOME/.cargo/env
rustc --version
apt-get install -y ripgrep shellcheck gcc libc-dev pkg-config libssl-dev make
cargo test --all
apt-get install -y dash
ls -l /bin/sh
cargo test --all
SHELL=/bin/sh JUST_TEST_ENV_VAR=dummy cargo test --all
apt-get install -y bash && ln -sf /bin/bash /bin/sh
ls -l /bin/sh
SHELL=/bin/sh JUST_TEST_ENV_VAR=dummy cargo test --all
/bin/sh -c "echo 'Hello, world!'"
/bin/sh -c echo Hello, world!
open "tests/backticks.rs"
apt-get install -y python3
python3 -c "print('Hello, world!')"
python3 -c print('Hello, world!')
python3 -c "print('Hello, world!')"
python3 -c 'print("Hello, world!")'
SHELL=/bin/sh JUST_TEST_ENV_VAR=dummy cargo test --all
open "tests/functions.rs"
USER=testuser JUST_TEST_ENV_VAR=dummy cargo test --all
