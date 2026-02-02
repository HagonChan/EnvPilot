ls -la
ls -la .github
ls -la .github/workflows
open ".github/workflows/test.yaml"
open "package.json"
node --version
curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs
apt-get update && apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs
apt-get remove -y libnode72 && apt-get install -y nodejs
dpkg --remove --force-remove-reinstreq libnode72 && apt-get install -y nodejs
apt-get remove -y nodejs && apt-get install -y nodejs
dpkg --remove --force-remove-reinstreq libnode72 && apt-get install -y nodejs
node --version
yarn --version
npm install -g yarn
yarn --version
yarn install
yarn test
NODE_OPTIONS=--max-old-space-size=4096 yarn test
open "vitest.config.ts"
edit 'export default defineConfig({
  test: {' 'export default defineConfig({
  test: {
    threads: false,'
yarn test
