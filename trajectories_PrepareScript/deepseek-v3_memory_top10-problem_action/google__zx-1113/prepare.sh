ls -la
find_file '*.yml' .github/workflows
open ".github/workflows/test.yml"
open "package.json"
node --version && npm --version
curl -sL https://deb.nodesource.com/setup_22.x | bash - && apt-get install -y nodejs
node --version && npm --version
curl -fsSL https://deb.nodesource.com/setup_22.x | bash - && apt-get install -y nodejs
apt-get install -y curl
apt-get update
apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_22.x | bash - && apt-get install -y nodejs
node --version && npm --version
npm ci
npm run test
