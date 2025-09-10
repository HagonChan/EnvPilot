ls -la
ls -la .github/workflows
open ".github/workflows/test.yaml"
open "package.json"
node --version
curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs
apt-get update && apt-get install -y curl && curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs
apt-get update && apt-get install -y curl && curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs
apt-get remove -y libnode72 && apt-get install -y nodejs
dpkg -i --force-overwrite /var/cache/apt/archives/nodejs_16.20.2-1nodesource1_amd64.deb
apt-get download nodejs && dpkg -i --force-overwrite ./nodejs*.deb
node --version
npm install -g yarn
yarn --version
yarn install
yarn build
yarn test
yarn test --threads false
