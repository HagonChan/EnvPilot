ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
open "package.json"
nvm install 16 && nvm use 16
node --version
curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs
apt-get remove -y nodejs && curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs
apt-get update && apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs
apt-get remove -y libnode72 && curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs
dpkg --force-all -r libnode72 && curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs
node --version
yarn --version
npm install -g yarn
yarn --version
yarn --immutable
yarn test:jest
