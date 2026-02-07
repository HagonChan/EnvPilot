ls -la
ls -la .github/workflows
open ".github/workflows/test.yml"
node --version
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
apt-get update && apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
node --version
npm ci
npm run build
npm run test
npm audit fix
npm run test
