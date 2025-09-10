ls -la
ls -la .github/workflows
open ".github/workflows/test.yml"
node --version && yarn --version
curl -fsSL https://deb.nodesource.com/setup_lts.x | bash - && apt-get install -y nodejs && npm install -g yarn
node --version
curl -fsSL https://deb.nodesource.com/setup_lts.x | bash - && apt-get install -y nodejs && npm install -g yarn
apt-get update && apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_lts.x | bash - && apt-get install -y nodejs && npm install -g yarn
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
nvm install --lts
npm install -g yarn
node --version && npm --version && yarn --version
yarn install
yarn test
