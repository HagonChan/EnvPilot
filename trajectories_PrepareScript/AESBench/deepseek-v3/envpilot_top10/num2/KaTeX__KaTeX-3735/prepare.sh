ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
open "package.json"
curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs
node --version
curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs
apt-get install -y curl
apt-get update
apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs
apt-get remove -y libnode72
dpkg --force-all -r libnode72
apt-get install -y nodejs
node --version
npm install -g yarn
yarn --version
yarn --immutable
yarn test:lint
yarn test:flow
yarn test:jest --coverage
