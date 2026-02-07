ls -la
ls -la .github
ls -la .github/workflows
open ".github/workflows/ci.yml"
open "README.md"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --default-toolchain 1.88.0
apt update && apt install -y curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --default-toolchain 1.88.0
source $HOME/.cargo/env
apt update && apt install -y gcc-multilib libssl-dev:i386 pkg-config:i386
dpkg --add-architecture i386 && apt update
apt install -y gcc-multilib libssl-dev:i386 pkg-config:i386
cargo test --workspace --no-fail-fast
apt install -y libssl-dev && export OPENSSL_DIR=/usr
cargo test --workspace --no-fail-fast
find /usr -name "libssl*" -o -name "libcrypto*" 2>/dev/null
export OPENSSL_DIR=/usr/lib/x86_64-linux-gnu/ && cargo test --workspace --no-fail-fast
export OPENSSL_DIR=/usr && cargo test --workspace --no-fail-fast
export OPENSSL_LIB_DIR=/usr/lib/x86_64-linux-gnu/ && export OPENSSL_INCLUDE_DIR=/usr/include && cargo test --workspace --no-fail-fast
