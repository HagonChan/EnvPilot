ls -la
open ".nvmrc"
node --version
nvm install v20.11
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
apt-get update && apt-get install -y curl
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
node --version && npm --version
yarn install
npm install -g yarn
yarn install
corepack enable && corepack prepare yarn@4.0.2 --activate
yarn install
open "package.json"
yarn test
nx view-logs
yarn nx view-logs
