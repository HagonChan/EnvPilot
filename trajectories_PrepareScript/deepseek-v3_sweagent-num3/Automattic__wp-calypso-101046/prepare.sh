ls -la
ls -la .github/workflows
ls -la .circleci
open ".circleci/config.yml"
open "package.json"
yarn install --immutable --inline-builds
npm install -g yarn
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
apt update
apt install -y curl
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
apt install -y nodejs
apt remove -y nodejs
curl -fsSL https://deb.nodesource.com/setup_22.x | bash -
apt install -y nodejs
node --version
npm install -g yarn
yarn --version
yarn install --immutable --inline-builds
yarn test-client
yarn test-server
yarn test-e2e
