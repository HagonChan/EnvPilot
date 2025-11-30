ls -la
ls -la .github
ls -la .github/workflows
cat .github/workflows/test-js-packages.yml
dpkg --configure -a && curl -sL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
apt-get install -y curl
apt-get update
apt-get install -y curl
npm install -g turbo
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && nvm install 21.7.3 && nvm use 21.7.3
npm install -g turbo
apt-get install -y graphviz sccache cargo libssl-dev build-essential
cargo install sccache
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
apt-cache search sccache
turbo run check-types test build
npm install
turbo run check-types test build
cat package.json
npm install -g pnpm
turbo run check-types test build
pnpm store prune
npm uninstall -g pnpm && npm install -g pnpm
turbo run check-types test build
nvm install 20.11.1 && nvm use 20.11.1
turbo run check-types test build
npm install -g turbo
turbo run check-types test build
ls -la node_modules
pnpm -v
npm uninstall -g pnpm && npm install -g pnpm
pnpm -v
turbo run check-types test build
nvm install 22.16.0 && nvm use 22.16.0
turbo run check-types test build
npm install -g turbo
turbo run check-types test build
cat turbo.json
printenv
export PNPM_HOME=$(npm config get prefix)/pnpm && turbo run check-types test build
which pnpm
npm uninstall -g pnpm && npm install -g pnpm
pnpm -v
turbo run check-types test build
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
apt-cache search cargo
apt-get install -y cargo
turbo run check-types test build

