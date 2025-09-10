ls -la
ls -la .github/workflows
open ".github/workflows/runtime_build_and_test.yml"
open ".nvmrc"
node --version
dpkg --configure -a && curl -sL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
apt-get install -y curl
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
nvm install 18.20.1
node --version && npm --version
yarn --version
npm install -g yarn
yarn --version
yarn install --frozen-lockfile
yarn install --frozen-lockfile
export ELECTRON_MIRROR="https://cdn.npm.taobao.org/dist/electron/" && yarn install --frozen-lockfile
export NODE_TLS_REJECT_UNAUTHORIZED=0 && yarn install --frozen-lockfile
yarn test
