ls -la
ls -la .github/workflows
open ".github/workflows/nodejs.yml"
open "README.md"
find_file '*.c'
find_file '*.cpp'
find_file '*.h'
apt-get update && apt-get install -y nodejs npm
node --version && npm --version
npm ci
curl -fsSL https://deb.nodesource.com/setup_lts.x | bash - && apt-get install -y nodejs
apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_lts.x | bash - && apt-get install -y nodejs
apt-get remove -y libnode-dev && apt-get install -y nodejs
node --version && npm --version
npm ci
npm audit fix
npm test
npm run test:unit
npm run cy:ci
