ls -la
ls -la .github/workflows
open ".github/workflows/test-js-packages.yml"
open "package.json"
curl -fsSL https://deb.nodesource.com/setup_22.x | bash - && apt-get install -y nodejs
apt-get update && apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_22.x | bash - && apt-get install -y nodejs
node --version && npm --version
apt-get install -y graphviz sccache cargo libssl-dev build-essential
cargo install sccache
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
. $HOME/.cargo/env && cargo install sccache
npm install -g turbo
npm install
turbo run test
npm install -g pnpm
turbo run test
npm install -g tsup
npm install -g @napi-rs/cli
npm install -g prettier
turbo run test
npm install -g tsx
npm install
turbo run test
cd packages/turbo-releaser && ls -la
open "packages/turbo-releaser/package.json"
ls -la packages
cd .. && ls -la
cd turbo-releaser && ls -la
open "packages/turbo-releaser/package.json"
open "./package.json"
cd .. && cd .. && npm install --workspace=@turbo/releaser
pnpm install
turbo run test
turbo run build
rustc --version && cargo --version
rustup update stable
cd cli && pnpm run build
apt-get install -y pkg-config libssl-dev cmake
cargo clean && pnpm run build
apt-get install -y protobuf-compiler
pnpm run build
curl -LO https://github.com/protocolbuffers/protobuf/releases/download/v26.1/protoc-26.1-linux-x86_64.zip && unzip protoc-26.1-linux-x86_64.zip -d /usr/local
apt-get install -y unzip
curl -LO https://github.com/protocolbuffers/protobuf/releases/download/v26.1/protoc-26.1-linux-x86_64.zip && unzip protoc-26.1-linux-x86_64.zip -d /usr/local
protoc --version
pnpm run build
curl -LO https://capnproto.org/install.html && echo 'Manual installation required. Please follow instructions at https://capnproto.org/install.html'
curl -LO https://capnproto.org/capnproto-c++-0.10.4.tar.gz && tar -xzf capnproto-c++-0.10.4.tar.gz && cd capnproto-c++-0.10.4 && ./configure && make -j6 && make install

