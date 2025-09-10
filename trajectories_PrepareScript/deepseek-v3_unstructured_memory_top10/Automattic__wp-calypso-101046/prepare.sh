ls -la
ls -la .github/workflows
open "package.json"
open "README.md"
node --version && yarn --version
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
apt-get update && apt-get install -y curl
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
apt-get update && apt-get install -y nodejs
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
wget https://nodejs.org/dist/v22.9.0/node-v22.9.0-linux-x64.tar.xz
apt-get update && apt-get install -y wget
wget https://nodejs.org/dist/v22.9.0/node-v22.9.0-linux-x64.tar.xz
tar -xf node-v22.9.0-linux-x64.tar.xz
apt-get update && apt-get install -y xz-utils
tar -xf node-v22.9.0-linux-x64.tar.xz
mkdir -p /usr/local/lib/nodejs && mv node-v22.9.0-linux-x64 /usr/local/lib/nodejs/ && ln -s /usr/local/lib/nodejs/node-v22.9.0-linux-x64/bin/node /usr/local/bin/node && ln -s /usr/local/lib/nodejs/node-v22.9.0-linux-x64/bin/npm /usr/local/bin/npm && ln -s /usr/local/lib/nodejs/node-v22.9.0-linux-x64/bin/npx /usr/local/bin/npx
node --version && npm --version
npm install -g yarn
yarn --version
find / -name yarn 2>/dev/null
export PATH=$PATH:/usr/local/lib/nodejs/node-v22.9.0-linux-x64/bin
yarn --version
yarn install
open "package.json"
search_file '"test"' package.json
yarn test
yarn test --verbose
ls -la test-results
ls -la | grep -i test
ls -la test
ls -la test/e2e
