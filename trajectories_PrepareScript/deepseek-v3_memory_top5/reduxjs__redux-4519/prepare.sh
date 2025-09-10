ls -la
ls -la .github/workflows
open ".github/workflows/test.yaml"
open "package.json"
node --version
curl -sL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs
apt-get remove -y nodejs && curl -sL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs
apt-get update && apt-get install -y curl
curl -sL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs
apt-get remove -y libnode72 && curl -sL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs
dpkg --remove --force-remove-reinstreq libnode72 && curl -sL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs
apt-get remove -y nodejs && apt-get autoremove -y && curl -sL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs
dpkg --remove --force-remove-reinstreq nodejs libnode72 && apt-get autoremove -y && curl -sL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs
node --version
yarn --version
npm install -g yarn
yarn --version
yarn install
yarn test
NODE_OPTIONS='--max-old-space-size=4096' yarn test
yarn test --threads=1
open "vitest.config.ts"
ls -la test
open "package.json"
yarn add vitest@0.27.2 --dev
yarn test
yarn test --threads=1
yarn add vitest@0.24.3 --dev
yarn test
ls -la test
yarn test test/compose.spec.ts
NODE_OPTIONS='--max-old-space-size=8192' yarn test test/compose.spec.ts
