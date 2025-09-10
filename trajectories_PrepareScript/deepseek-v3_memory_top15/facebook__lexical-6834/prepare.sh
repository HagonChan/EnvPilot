ls -la
ls -la .github/workflows
open ".github/workflows/tests.yml"
open ".github/workflows/call-core-tests.yml"
open "package.json"
nvm install 20.11.0 && nvm use 20.11.0
apt-get update
apt-get install -y nodejs npm
node --version && npm --version
curl -sL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
apt-get install -y curl
curl -sL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
apt-get remove -y libnode-dev && apt-get install -y nodejs
node --version && npm --version
npm ci
npm run test-unit
