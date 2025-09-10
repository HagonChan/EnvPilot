ls -la
ls -la .github/workflows
open ".github/workflows/tests.yml"
open ".github/workflows/call-core-tests.yml"
node --version
apt-get update && apt-get install -y nodejs=20.11.0 npm
curl -fsSL https://deb.nodesource.com/setup_20.x | bash -
apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_20.x | bash -
apt-get install -y nodejs
node --version && npm --version
npm ci
npm run build
npm run build-www
npm run test-unit
