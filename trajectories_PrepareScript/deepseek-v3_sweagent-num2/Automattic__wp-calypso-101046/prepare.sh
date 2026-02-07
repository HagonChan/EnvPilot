ls -la
ls -la .github/workflows
open ".circleci/config.yml"
scroll_down
scroll_down
scroll_down
scroll_down
cat package.json
cat README.md
ls -la
ls -la test
cat test/README.md
yarn install --immutable --inline-builds
npm install -g yarn
apt update && apt install -y nodejs npm
npm install -g yarn
yarn install --immutable --inline-builds
yarn --version
npm install -g yarn@1.22.22
yarn --version
which yarn
cat /usr/local/bin/yarn
node --version
curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs
apt update && apt install -y curl
curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs
apt remove -y libnode-dev
apt-get install -y nodejs
apt remove -y libnode72
apt remove -y --purge libnode72
rm -f /usr/share/systemtap/tapset/node.stp
apt-get install -y nodejs
dpkg --force-all -i /var/cache/apt/archives/nodejs_16.20.2-1nodesource1_amd64.deb
curl -O https://deb.nodesource.com/node_16.x/pool/main/n/nodejs/nodejs_16.20.2-1nodesource1_amd64.deb
dpkg --force-all -i nodejs_16.20.2-1nodesource1_amd64.deb
node --version && yarn --version
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
node --version && yarn --version
yarn install --immutable --inline-builds
yarn test
yarn test my-sites/checkout/src/test/checkout-main.tsx
cat package.json | grep test
yarn run test-client --testPathPattern=my-sites/checkout/src/test/checkout-main.tsx --verbose
yarn test
yarn test --verbose
yarn test --testPathPattern=<failing_test_file_path>
find test -type f -name "*.tsx" -o -name "*.js" | head -n 20
yarn test > test_output.log 2>&1
cat test_output.log

