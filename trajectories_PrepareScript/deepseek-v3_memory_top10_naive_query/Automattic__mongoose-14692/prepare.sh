ls -la
ls -la .github/workflows
open ".github/workflows/test.yml"
open "package.json"
nvm install 18 && nvm use 18
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
node --version && npm --version
apt-get update && apt-get install -y nodejs npm
node --version && npm --version
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
wget https://nodejs.org/dist/v18.17.1/node-v18.17.1-linux-x64.tar.xz && tar -xf node-v18.17.1-linux-x64.tar.xz && cp -R node-v18.17.1-linux-x64/* /usr/local/
apt-get install -y wget
wget https://nodejs.org/dist/v18.17.1/node-v18.17.1-linux-x64.tar.xz && tar -xf node-v18.17.1-linux-x64.tar.xz && cp -R node-v18.17.1-linux-x64/* /usr/local/
wget --no-check-certificate https://nodejs.org/dist/v18.17.1/node-v18.17.1-linux-x64.tar.xz && tar -xf node-v18.17.1-linux-x64.tar.xz && cp -R node-v18.17.1-linux-x64/* /usr/local/
tar -xf node-v18.17.1-linux-x64.tar.xz && cp -R node-v18.17.1-linux-x64/* /usr/local/
node --version && npm --version
curl -L https://www.npmjs.com/install.sh | sh
npm --version
npm install -g semver
apt-get remove --purge -y nodejs npm && apt-get autoremove -y
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
node --version && npm --version
npm install
npm test
npm run test-coverage
npm run test-deno
