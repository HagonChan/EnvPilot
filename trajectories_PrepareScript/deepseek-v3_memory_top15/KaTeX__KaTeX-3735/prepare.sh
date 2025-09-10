ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
open "package.json"
open "README.md"
node --version
curl -sL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs
node --version
curl -sL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs
apt-get remove -y nodejs && curl -sL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
apt-get install -y curl
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
nvm install 16
node --version
yarn --version
npm install -g yarn
yarn --version
yarn --immutable
yarn test:jest
