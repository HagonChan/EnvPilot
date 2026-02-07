ls -la
open ".nvmrc"
open "package.json"
ls -la .github/workflows
open "README.md"
command -v nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
apt-get update && apt-get install -y curl
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
nvm install 22.9.0 && nvm use 22.9.0
apt-get install -y python3
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
nvm install 22.9.0 && nvm use 22.9.0
node --version && yarn --version
npm install -g yarn
yarn --version
yarn install
yarn cache clean && yarn install
open "package.json"
search_file '"test"' package.json
yarn test

