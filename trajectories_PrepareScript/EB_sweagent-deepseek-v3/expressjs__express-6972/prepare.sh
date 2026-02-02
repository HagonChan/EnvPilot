ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
open "package.json"
curl -fsSL https://deb.nodesource.com/setup_lts.x | bash - && apt-get install -y nodejs
node --version && npm --version
apt-get install -y npm
node --version && npm --version
npm install --ignore-scripts --include=dev
npm cache clean --force && npm install --ignore-scripts --include=dev
npm install --ignore-scripts --include=dev
npm config set registry https://registry.npm.taobao.org && npm install --ignore-scripts --include=dev
npm config set registry https://registry.npmjs.org && npm install --ignore-scripts --include=dev
npm test
curl -fsSL https://deb.nodesource.com/setup_lts.x | bash - && apt-get install -y nodejs
apt-get update && apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_lts.x | bash - && apt-get install -y nodejs
apt-get remove -y libnode-dev
apt-get install -y nodejs
node --version && npm --version
npm install --ignore-scripts --include=dev
npm test
npm cache clean --force
