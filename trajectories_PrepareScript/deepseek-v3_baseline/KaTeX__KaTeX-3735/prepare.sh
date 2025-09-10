ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
node --version
nvm --version
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
apt-get update && apt-get install -y curl
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
nvm install 16
node --version && npm --version
npm install -g yarn
yarn --version
yarn --immutable
yarn test:lint
yarn test:flow
yarn test:jest --coverage
