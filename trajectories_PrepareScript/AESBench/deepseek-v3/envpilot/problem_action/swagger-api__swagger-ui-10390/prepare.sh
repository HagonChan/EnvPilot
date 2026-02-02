ls -la
ls -la .github
ls -la .github/workflows
open ".github/workflows/nodejs.yml"
node --version && npm --version
apt-get update && apt-get install -y nodejs npm
node --version && npm --version
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
apt-get remove -y libnode-dev && apt-get install -y nodejs
node --version && npm --version
npm install
open "package.json"
npm run test:unit
npm run lint-errors
npm run build
npm run test:artifact
