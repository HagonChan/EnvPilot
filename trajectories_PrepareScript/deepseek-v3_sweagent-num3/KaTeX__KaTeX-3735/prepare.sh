ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
open "package.json"
yarn --immutable
npm install -g yarn
apt update
apt install -y nodejs yarn
yarn --immutable
yarn --version
npm install -g yarn
node --version
curl -fsSL https://deb.nodesource.com/setup_16.x | bash -
apt install -y curl
curl -fsSL https://deb.nodesource.com/setup_16.x | bash -
apt install -y nodejs
apt remove -y libnode72
dpkg --force-all -r libnode72
apt install -y nodejs
node --version && npm --version
npm install -g yarn
npm install -g yarn --force
yarn --version
yarn install
yarn test:lint
yarn test:flow
yarn test:jest --coverage
