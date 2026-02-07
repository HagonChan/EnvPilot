ls -la
ls -la .github/workflows
open ".github/workflows/test.yaml"
open "package.json"
node --version
curl -sL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs
node --version
curl -sL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs
apt-get remove -y nodejs && apt-get autoremove -y
apt-get update && apt-get install -y curl
curl -sL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs
node --version
npm install -g yarn
yarn --version
yarn install
yarn build
yarn test
NODE_OPTIONS=--max-old-space-size=4096 yarn test
open "vitest.config.ts"
yarn test --threads 1
