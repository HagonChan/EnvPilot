ls -la
ls -la .github/workflows
open ".github/workflows/test-js-packages.yml"
open "package.json"
curl -fsSL https://deb.nodesource.com/setup_22.x | bash - && apt-get install -y nodejs
apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_22.x | bash - && apt-get install -y nodejs
node --version && npm --version
npm install -g pnpm@8.14.0
pnpm --version
pnpm install
turbo run test
npm install -g turbo
turbo run test
apt-get install -y graphviz sccache cargo libssl-dev build-essential
apt-get install -y graphviz cargo libssl-dev build-essential
cargo install sccache
cargo install sccache --version 0.11.0
turbo run test
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source $HOME/.cargo/env
rustc --version && cargo --version
turbo run test
apt-get install -y rsync
turbo run test
npm cache clean --force
turbo run test
pnpm install --force
turbo run test
pnpm add turbo@2.8.3 --save-dev
pnpm add turbo@2.8.3 --save-dev -w
pnpm turbo run test
apt-get install -y protobuf-compiler
pnpm turbo run test
find_file build.rs /testbed/crates/turborepo-lib
open "/testbed/crates/turborepo-lib/build.rs"
edit 'tonic_build::configure()
        .build_server(true)
        .file_descriptor_set_path("src/daemon/file_descriptor_set.bin")
        .compile(
            &["./src/daemon/proto/turbod.proto"],
            &["./src/daemon/proto"],
        );' 'tonic_build::configure()
        .build_server(true)
        .file_descriptor_set_path("src/daemon/file_descriptor_set.bin")
        .protoc_arg("--experimental_allow_proto3_optional")
        .compile(
            &["./src/daemon/proto/turbod.proto"],
            &["./src/daemon/proto"],
        );'
pnpm turbo run test
apt-get install -y capnproto
capnp --version
pnpm turbo run test
ls -la
open "package.json"
search_dir turbow.js /testbed
ls -la node_modules/turbo
ls -la .pnpm/turbo@2.8.3/node_modules/turbo
ls -la node_modules/turbo
find_file README.md /testbed
open "package.json"

