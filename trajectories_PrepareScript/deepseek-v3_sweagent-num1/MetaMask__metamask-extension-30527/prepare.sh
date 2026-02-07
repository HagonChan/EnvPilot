ls -la
ls -la .github/workflows
open ".github/workflows/run-tests.yml"
open "package.json"
yarn install
npm install -g yarn
sudo apt-get update && sudo apt-get install -y nodejs npm
apt-get update && apt-get install -y nodejs npm
npm install -g yarn
yarn install
corepack enable
npm install -g corepack
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
apt-get remove -y libnode-dev && apt-get install -y nodejs
node --version && npm --version
corepack enable
corepack prepare yarn@4.5.1 --activate
yarn --version
yarn set version 4.5.1
corepack enable --install-directory=~/.yarn/bin
npm install -g yarn@4.5.1
npm view yarn versions
curl -o yarn.tar.gz -L https://github.com/yarnpkg/yarn/releases/download/v4.5.1/yarn-v4.5.1.tar.gz && tar -xzf yarn.tar.gz && mv yarn-v4.5.1/bin/yarn /usr/local/bin/yarn && rm -rf yarn.tar.gz yarn-v4.5.1
curl -I https://github.com/yarnpkg/yarn/releases/download/v4.5.1/yarn-v4.5.1.tar.gz
npm install -g yarn@2.4.3
rm -f /usr/bin/yarn && npm install -g yarn@2.4.3
rm -f /usr/bin/yarn /usr/bin/yarnpkg && npm install -g yarn@2.4.3 --force
yarn --version
which yarn
cat /usr/local/bin/yarn
ls -la /usr/local/lib/node_modules/yarn
cat /usr/local/lib/node_modules/yarn/package.json | grep version
npm uninstall -g yarn && npm install -g yarn@2.4.3
yarn --version
which -a yarn
rm -f /usr/bin/yarn /bin/yarn && hash -r && yarn --version
ln -sf /usr/local/lib/node_modules/yarn/bin/yarn.js /usr/local/bin/yarn && yarn --version
echo $PATH
npm install -g yarn@2.4.3 --force
yarn --version
yarn install
open "package.json"
cat package.json
edit '"packageManager": "yarn@4.5.1"' '"packageManager": "yarn@1.22.22"'
goto 779
edit '"packageManager": "yarn@4.5.1"' '"packageManager": "yarn@1.22.22"'
yarn install

