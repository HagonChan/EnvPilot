ls -la
ls -la .github/workflows
open ".github/workflows/test.yml"
yarn --version || echo "yarn not installed"
npm --version || echo "npm not installed"
apt-get update && apt-get install -y nodejs npm
npm install -g yarn
node --version && npm --version && yarn --version
yarn install
nvm --version || echo "nvm not installed"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
apt-get install -y curl
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
nvm install 18.17.1 && nvm use 18.17.1
node --version && npm --version && yarn --version
yarn install
yarn test
