ls -la
open ".nvmrc"
open "package.json"
search_file '"engines"' package.json
goto 695
nvm install 20.17.0 && nvm use 20.17.0
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
apt-get update && apt-get install -y nodejs
wget https://nodejs.org/dist/v20.17.0/node-v20.17.0-linux-x64.tar.xz && tar -xf node-v20.17.0-linux-x64.tar.xz && cp -R node-v20.17.0-linux-x64/* /usr/local/
apt-get install -y curl
curl -o node-v20.17.0-linux-x64.tar.xz https://nodejs.org/dist/v20.17.0/node-v20.17.0-linux-x64.tar.xz && tar -xf node-v20.17.0-linux-x64.tar.xz && cp -R node-v20.17.0-linux-x64/* /usr/local/
apt-get install -y xz-utils
curl -o node-v20.17.0-linux-x64.tar.xz https://nodejs.org/dist/v20.17.0/node-v20.17.0-linux-x64.tar.xz && tar -xf node-v20.17.0-linux-x64.tar.xz && cp -R node-v20.17.0-linux-x64/* /usr/local/
node --version
yarn --version
npm install -g yarn@4.4.1
npm install -g yarn
yarn --version
yarn set version stable
corepack enable
corepack prepare yarn@4.5.1 --activate
yarn --version
yarn install
yarn install --ignore-scripts
edit '"postinstall": "yarn webpack:clearcache && yarn foundryup"' '"postinstall": "echo '"'"'Skipping postinstall script'"'"'"' False
yarn install
edit '"postinstall": "echo '"'"'Skipping postinstall script'"'"'"' '"postinstall": "yarn webpack:clearcache && yarn foundryup"' False
yarn webpack:clearcache && yarn foundryup
yarn test
yarn test --detectOpenHandles
grep -r "FAIL" --include="*.test.*" .
