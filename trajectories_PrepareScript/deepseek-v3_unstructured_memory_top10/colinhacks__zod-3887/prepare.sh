ls -la
ls -la .github/workflows
open ".github/workflows/test.yml"
node --version && yarn --version
apt-get update && apt-get install -y nodejs npm && npm install -g yarn
node --version && yarn --version
yarn install
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash && export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && nvm install 18 && nvm use 18
apt-get install -y curl
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash && export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && nvm install 18 && nvm use 18
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
apt-get remove -y libnode-dev && apt-get install -y nodejs
apt-get remove -y libnode-dev libnode72 && apt-get install -y nodejs
dpkg --remove --force-remove-reinstreq libnode72 && apt-get install -y nodejs
apt-get remove -y nodejs && apt-get install -y nodejs
dpkg --remove --force-remove-reinstreq nodejs libnode72 && apt-get install -y nodejs
node --version && yarn --version
yarn install
yarn test
