ls -la
ls -la .github/workflows
open ".github/workflows/runtime_build_and_test.yml"
open "package.json"
open ".nvmrc"
nvm install v18.20.1
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
apt-get remove -y nodejs
apt-get update && apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
apt-get remove -y libnode72
apt-get install -y nodejs
node --version
npm install -g yarn
yarn --version
yarn install --frozen-lockfile
yarn test
