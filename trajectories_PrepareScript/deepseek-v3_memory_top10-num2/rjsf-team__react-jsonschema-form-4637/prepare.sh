ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
open ".node-version"
open ".nvmrc"
node --version && npm --version
curl -fsSL https://deb.nodesource.com/setup_22.x | bash - && apt-get install -y nodejs
apt-get update && apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_22.x | bash - && apt-get install -y nodejs
node --version && npm --version
npm ci
npm test
npm run build
npm test
