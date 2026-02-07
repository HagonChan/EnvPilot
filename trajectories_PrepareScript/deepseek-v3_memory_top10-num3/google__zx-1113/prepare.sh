ls -la
ls -la .github/workflows
open ".github/workflows/test.yml"
open "package.json"
curl -fsSL https://deb.nodesource.com/setup_22.x | bash - && apt-get install -y nodejs
apt-get update && apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_22.x | bash - && apt-get install -y nodejs
node --version && npm --version
npm ci
npm run test:it
npm run build
npm run test:it
npm run test:unit
npm run test:types
npm run test:license
