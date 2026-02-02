ls -la
ls -la .github/workflows
open ".github/workflows/run-tests.yml"
open "package.json"
yarn install
npm install -g yarn
sudo apt update && sudo apt install -y nodejs npm
apt update && apt install -y nodejs npm
npm install -g yarn
yarn install
corepack enable
node --version
curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs
apt install -y curl
curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs
apt remove -y libnode-dev
curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs
apt remove -y libnode72
apt purge -y libnode72
rm -f /usr/share/systemtap/tapset/node.stp
apt install -y nodejs
dpkg --force-all -i /var/cache/apt/archives/nodejs_16.20.2-1nodesource1_amd64.deb
curl -fsSL https://deb.nodesource.com/node_16.x/pool/main/n/nodejs/nodejs_16.20.2-1nodesource1_amd64.deb -o nodejs.deb
dpkg --force-all -i nodejs.deb
node --version && npm --version
corepack enable
yarn set version 4.5.1
corepack prepare yarn@4.5.1 --activate
yarn --version
corepack yarn --version
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
node --version && npm --version
corepack enable && corepack prepare yarn@4.5.1 --activate
yarn --version
corepack yarn --version
corepack yarn install
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
node --version && npm --version
corepack enable && corepack prepare yarn@4.5.1 --activate
yarn --version
corepack yarn --version
corepack yarn install
open "package.json"
edit '"typescript": "5.4.5"' '"typescript": "^5.7.3"'
search_file '"typescript"' package.json
edit '"typescript": "~5.4.5"' '"typescript": "^5.7.3"' False
search_file '"@typescript-eslint/eslint-plugin"' package.json
edit '"@typescript-eslint/eslint-plugin": "^7.10.0"' '"@typescript-eslint/eslint-plugin": "^7.11.0"' False
edit '"@typescript-eslint/parser": "^7.10.0"' '"@typescript-eslint/parser": "^7.11.0"' False

