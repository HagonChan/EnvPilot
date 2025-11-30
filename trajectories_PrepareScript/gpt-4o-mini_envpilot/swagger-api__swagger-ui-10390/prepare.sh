ls -la
ls -la .github
ls -la .github/workflows
cat .github/workflows/nodejs.yml
node --version || echo "Node.js not installed"; npm --version || echo "npm not installed"
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
apt-get install -y curl
apt-get update
apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
node --version; npm --version
npm ci
npm test
