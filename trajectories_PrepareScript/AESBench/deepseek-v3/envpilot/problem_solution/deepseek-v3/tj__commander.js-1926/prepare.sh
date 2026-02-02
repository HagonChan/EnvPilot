ls -la
ls -la .github/workflows
open ".github/workflows/tests.yml"
node --version
curl -fsSL https://deb.nodesource.com/setup_16.x | bash -
apt-get update && apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs
node --version && npm --version
npm ci
npm test
