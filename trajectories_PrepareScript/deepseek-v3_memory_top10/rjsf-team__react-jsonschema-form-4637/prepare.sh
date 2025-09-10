ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
open ".node-version"
open ".nvmrc"
open "package.json"
nvm install 22.13.1 && nvm use 22.13.1
curl -sL https://deb.nodesource.com/setup_22.x | bash - && apt-get install -y nodejs
curl -o node-v22.13.1-linux-x64.tar.xz https://nodejs.org/dist/v22.13.1/node-v22.13.1-linux-x64.tar.xz && tar -xf node-v22.13.1-linux-x64.tar.xz && sudo mv node-v22.13.1-linux-x64 /usr/local/node && sudo ln -sf /usr/local/node/bin/node /usr/local/bin/node && sudo ln -sf /usr/local/node/bin/npm /usr/local/bin/npm
apt-get update && apt-get install -y curl
curl -o node-v22.13.1-linux-x64.tar.xz https://nodejs.org/dist/v22.13.1/node-v22.13.1-linux-x64.tar.xz && tar -xf node-v22.13.1-linux-x64.tar.xz && sudo mv node-v22.13.1-linux-x64 /usr/local/node && sudo ln -sf /usr/local/node/bin/node /usr/local/bin/node && sudo ln -sf /usr/local/node/bin/npm /usr/local/bin/npm
apt-get install -y xz-utils
curl -o node-v22.13.1-linux-x64.tar.xz https://nodejs.org/dist/v22.13.1/node-v22.13.1-linux-x64.tar.xz && tar -xf node-v22.13.1-linux-x64.tar.xz && sudo mv node-v22.13.1-linux-x64 /usr/local/node && sudo ln -sf /usr/local/node/bin/node /usr/local/bin/node && sudo ln -sf /usr/local/node/bin/npm /usr/local/bin/npm
curl -o node-v22.13.1-linux-x64.tar.xz https://nodejs.org/dist/v22.13.1/node-v22.13.1-linux-x64.tar.xz && tar -xf node-v22.13.1-linux-x64.tar.xz && mv node-v22.13.1-linux-x64 /usr/local/node && ln -sf /usr/local/node/bin/node /usr/local/bin/node && ln -sf /usr/local/node/bin/npm /usr/local/bin/npm
node --version && npm --version
npm ci
npm test
npm run build-serial
npm test
