ls -la
ls -la .github/workflows
open ".github/workflows/nodejs.yml"
node --version || echo "Node.js not installed"
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
node --version
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
node --version
npm --version
npm ci
npm run lint-errors
npm run test:unit
npm run build
