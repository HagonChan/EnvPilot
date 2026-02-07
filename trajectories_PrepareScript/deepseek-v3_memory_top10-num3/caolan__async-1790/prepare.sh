ls -la
ls -la .github
ls -la .github/workflows
open ".github/workflows/ci.yml"
node --version && npm --version
curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs
node --version && npm --version
apt-get install -y npm
node --version && npm --version
npm ci
npm test
npm run mocha-browser-test
