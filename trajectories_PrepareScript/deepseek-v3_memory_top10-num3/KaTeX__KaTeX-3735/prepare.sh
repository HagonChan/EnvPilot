ls -la
open "package.json"
ls -la .github/workflows
open ".github/workflows/ci.yml"
curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs
node --version && yarn --version
curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
apt-get update && apt-get install -y curl
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
nvm install 16
node --version && npm install -g yarn
yarn --version && yarn --immutable
yarn test:jest
