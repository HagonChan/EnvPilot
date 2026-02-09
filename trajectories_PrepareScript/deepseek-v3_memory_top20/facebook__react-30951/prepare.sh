ls -la
ls -la .github/workflows
open ".github/workflows/runtime_build_and_test.yml"
open ".nvmrc"
open "package.json"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
apt-get update && apt-get install -y curl
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
nvm install 18.20.1
node --version && npm --version
npm install -g yarn
yarn --version
yarn install --frozen-lockfile
yarn config set registry https://registry.npmjs.org && yarn install --frozen-lockfile
export ELECTRON_SKIP_BINARY_DOWNLOAD=1 && yarn install --frozen-lockfile
yarn build
apt-get update && apt-get install -y openjdk-11-jdk
yarn build
yarn test
