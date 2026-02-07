ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
open "package.json"
apt-get update && apt-get install -y g++ make libssl-dev libyaml-dev
curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs && npm install -g yarn
apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs && npm install -g yarn
apt-get remove -y libnode72 && curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs && npm install -g yarn
apt-get install -y --force-yes nodejs && npm install -g yarn
wget https://nodejs.org/dist/v16.20.2/node-v16.20.2-linux-x64.tar.xz && tar -xf node-v16.20.2-linux-x64.tar.xz && cd node-v16.20.2-linux-x64 && cp -R * /usr/local/ && cd .. && rm -rf node-v16.20.2-linux-x64* && npm install -g yarn
apt-get install -y wget
wget https://nodejs.org/dist/v16.20.2/node-v16.20.2-linux-x64.tar.xz && tar -xf node-v16.20.2-linux-x64.tar.xz && cd node-v16.20.2-linux-x64 && cp -R * /usr/local/ && cd .. && rm -rf node-v16.20.2-linux-x64* && npm install -g yarn
apt-get install -y xz-utils && wget https://nodejs.org/dist/v16.20.2/node-v16.20.2-linux-x64.tar.xz && tar -xf node-v16.20.2-linux-x64.tar.xz && cd node-v16.20.2-linux-x64 && cp -R * /usr/local/ && cd .. && rm -rf node-v16.20.2-linux-x64* && npm install -g yarn
node --version && npm --version && yarn --version
yarn install
yarn test
