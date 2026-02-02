ls -la
ls -la .github/workflows
open ".github/workflows/main.yml"
ls -la .github/setup
open ".github/setup/action.yml"
open "package.json"
npm install -g pnpm
curl -fsSL https://get.pnpm.io/install.sh | sh -
wget -qO- https://get.pnpm.io/install.sh | sh -
node --version
apt-get update
apt-get install -y nodejs pnpm
node --version
curl -fsSL https://deb.nodesource.com/setup_20.x | bash -
wget -qO- https://deb.nodesource.com/setup_20.x | bash -
apt-cache policy nodejs
which tar
mkdir -p /tmp/nodejs && cd /tmp/nodejs
bash -c 'wget -q https://nodejs.org/dist/v20.10.0/node-v20.10.0-linux-x64.tar.xz || curl -s -O https://nodejs.org/dist/v20.10.0/node-v20.10.0-linux-x64.tar.xz'

bash -c 'wget -q https://nodejs.org/dist/v20.10.0/node-v20.10.0-linux-x64.tar.xz || curl -s -O https://nodejs.org/dist/v20.10.0/node-v20.10.0-linux-x64.tar.xz'
apt-get install -y apt-transport-https
bash -c 'echo "deb https://deb.nodesource.com/node_20.x jammy main" > /etc/apt/sources.list.d/nodesource.list && apt-get update && apt-get install -y nodejs'
apt-get install -y nodejs
npm install -g pnpm
node --version
bash -c 'wget -qO- https://get.pnpm.io/install.sh | sh -'
create install-pnpm.js
edit '' 'const https = require('"'"'https'"'"');
const fs = require('"'"'fs'"'"');
const path = require('"'"'path'"'"');

const pnpmUrl = '"'"'https://get.pnpm.io/install.sh'"'"';
const installScriptPath = path.join(__dirname, '"'"'install-pnpm.sh'"'"');

const file = fs.createWriteStream(installScriptPath);
https.get(pnpmUrl, (response) => {
  response.pipe(file);
  file.on('"'"'finish'"'"', () => {
    file.close();
    fs.chmod(installScriptPath, 0o755, (err) => {
      if (err) throw err;
      console.log('"'"'Install script downloaded successfully.'"'"');
      require('"'"'child_process'"'"').exec(`sh ${installScriptPath}`, (error, stdout, stderr) => {
        if (error) {
          console.error('"'"'Error installing pnpm:'"'"', error);
          return;
        }
        console.log(stdout);
        console.error(stderr);
      });
    });
  });
}).on('"'"'error'"'"', (err) => {
  fs.unlink(installScriptPath, () => {});
  console.error('"'"'Error downloading install script:'"'"', err);
});'
node install-pnpm.js
npm --version
cd /testbed
open "package.json"
npm --version
open "vitest.config.ts"
ls -la node_modules/.bin
which node
create download-pnpm.js
edit '' 'const fs = require('"'"'fs'"'"');
const https = require('"'"'https'"'"');
const path = require('"'"'path'"'"');

const pnpmUrl = '"'"'https://github.com/pnpm/pnpm/releases/latest/download/pnpm-linux-x64'"'"';
const pnpmPath = path.join(__dirname, '"'"'pnpm'"'"');

const file = fs.createWriteStream(pnpmPath);
https.get(pnpmUrl, (response) => {
  response.pipe(file);
  file.on('"'"'finish'"'"', () => {
    file.close();
    fs.chmod(pnpmPath, 0o755, (err) => {
      if (err) throw err;
      console.log('"'"'pnpm binary downloaded successfully.'"'"');
    });
  });
}).on('"'"'error'"'"', (err) => {
  fs.unlink(pnpmPath, () => {});
  console.error('"'"'Error downloading pnpm binary:'"'"', err);
});'
node download-pnpm.js
export PATH=$PATH:$(pwd) && pnpm --version
pnpm install
pnpm test-ci
