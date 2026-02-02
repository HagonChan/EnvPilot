ls -la
ls -la .github/workflows
open ".github/workflows/test.yml"
node --version && npm --version
apt update && apt install -y nodejs npm
node --version && npm --version
nvm --version || curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
apt install -y curl
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
nvm --version
nvm install --lts && nvm use --lts
node --version && npm --version
npm install
open "package.json"
cat package.json
npm test
npm install -g yarn
yarn test
