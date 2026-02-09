ls -la
ls -la .github/workflows
open ".github/workflows/run-tests.yml"
ls -la .github/actions/setup-environment
open "package.json"
open ".nvmrc"
node --version
search_file '"engines"' package.json
goto 695
open "package.json" 695
nvm --version
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
apt-get update && apt-get install -y curl
apt-get install -y curl
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
nvm install 20.17.0 && nvm use 20.17.0
nvm ls-remote | grep "v20"
nvm install 20.12.0 && nvm use 20.12.0
nvm ls-remote | grep "v20"
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
npm install -g yarn && yarn install
apt-get install -y npm
npm install -g yarn && yarn install
corepack enable && corepack prepare yarn@4.5.1 --activate && yarn install
nvm ls-remote
curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs
npm install -g yarn && yarn install
npm install -g yarn@4.5.1 && yarn install
yarn install
edit '"packageManager": "yarn@4.5.1"' '"packageManager": "yarn@1.22.22"' True
yarn install
nvm install 20.17.0 && nvm use 20.17.0
nvm ls-remote | grep "v20"
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
apt-get remove -y libnode-dev && curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
node --version && npm --version
corepack enable && corepack prepare yarn@4.5.1 --activate
yarn --version
corepack use yarn@4.5.1
yarn install
