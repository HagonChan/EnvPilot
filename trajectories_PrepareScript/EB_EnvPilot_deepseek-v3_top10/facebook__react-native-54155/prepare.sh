ls -la
ls -la .github/workflows
open ".github/workflows/test-all.yml"
open "package.json"
node --version
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
curl -o node-v20.19.4-linux-x64.tar.xz https://nodejs.org/dist/v20.19.4/node-v20.19.4-linux-x64.tar.xz && tar -xf node-v20.19.4-linux-x64.tar.xz && cp -r node-v20.19.4-linux-x64/* /usr/local/
apt-get install -y curl
curl -o node-v20.19.4-linux-x64.tar.xz https://nodejs.org/dist/v20.19.4/node-v20.19.4-linux-x64.tar.xz && tar -xf node-v20.19.4-linux-x64.tar.xz && cp -r node-v20.19.4-linux-x64/* /usr/local/
apt-get install -y xz-utils
curl -o node-v20.19.4-linux-x64.tar.xz https://nodejs.org/dist/v20.19.4/node-v20.19.4-linux-x64.tar.xz && tar -xf node-v20.19.4-linux-x64.tar.xz && cp -r node-v20.19.4-linux-x64/* /usr/local/
node --version
yarn --version
npm install -g yarn
yarn --version
yarn install
yarn test
