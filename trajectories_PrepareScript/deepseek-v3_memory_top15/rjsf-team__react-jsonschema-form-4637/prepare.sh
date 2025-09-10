ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
open ".node-version"
open ".nvmrc"
node --version
nvm install 22.13.1 && nvm use 22.13.1
curl -sL https://deb.nodesource.com/setup_22.x | bash - && apt-get install -y nodejs
node --version
apt-get remove -y nodejs && curl -sL https://deb.nodesource.com/setup_22.x | bash - && apt-get install -y nodejs
apt-get update && apt-get install -y curl
curl -sL https://deb.nodesource.com/setup_22.x | bash - && apt-get install -y nodejs
node --version && npm --version
npm ci
npm test
open "package.json"
npm run build
npm test
