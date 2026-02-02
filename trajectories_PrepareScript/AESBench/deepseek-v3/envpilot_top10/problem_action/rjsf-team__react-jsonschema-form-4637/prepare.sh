ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
node --version && npm --version
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
apt-get update && apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
node --version && npm --version
npm ci
npm ci --fetch-retry-mintimeout=20000 --fetch-retry-maxtimeout=120000
npm test
npm run build
npm test
