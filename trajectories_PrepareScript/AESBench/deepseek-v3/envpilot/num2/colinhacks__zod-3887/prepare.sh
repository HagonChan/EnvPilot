ls -la
open "package.json"
node --version && npm --version
apt-get update && apt-get install -y nodejs npm
node --version && npm --version
nvm --version
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
apt-get install -y curl
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
nvm install 21.7.3 && nvm use 21.7.3
node --version && npm --version
npm install
npm test
npm install -g yarn
yarn test:ts-jest
