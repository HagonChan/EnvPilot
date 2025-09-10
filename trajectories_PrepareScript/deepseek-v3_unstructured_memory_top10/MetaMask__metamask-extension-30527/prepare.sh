ls -la
ls -la .github/workflows
open ".github/workflows/run-tests.yml"
open "package.json"
node --version && yarn --version
apt-get update && apt-get install -y nodejs yarn
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
node --version && yarn --version
npm install -g yarn
npm install -g yarn --force
yarn --version
yarn install
corepack enable && corepack prepare yarn@4.5.1 --activate
yarn --version
yarn install
yarn install
export ELECTRON_MIRROR="https://cdn.npm.taobao.org/dist/electron/" && yarn install
export NODE_TLS_REJECT_UNAUTHORIZED=0 && yarn install
yarn test:unit:coverage
