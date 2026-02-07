ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
open ".nvmrc"
open "package.json"
node --version
curl -fsSL https://deb.nodesource.com/setup_22.x | bash - && apt-get install -y nodejs
node --version
curl -fsSL https://deb.nodesource.com/setup_22.x | bash - && apt-get install -y nodejs
apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_22.x | bash - && apt-get install -y nodejs
node --version
npm ci
npm test
npm run build
npm test
