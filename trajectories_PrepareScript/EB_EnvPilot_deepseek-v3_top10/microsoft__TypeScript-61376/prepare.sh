ls -la
ls -la .github
ls -la .github/workflows
open ".github/workflows/ci.yml"
scroll_down
open "package.json"
open "README.md"
curl -fsSL https://deb.nodesource.com/setup_24.x | bash - && apt-get install -y nodejs
node --version && npm --version
apt-get remove -y nodejs && curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
apt-get update && apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
node --version && npm --version
apt-get install -y git jq
npm install -g playwright
npm ci
npm run test
