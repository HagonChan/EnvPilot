ls -la
ls -la .github/workflows
open ".github/workflows/tests.yml"
apt-get update
curl -fsSL https://deb.nodesource.com/setup_20.x | bash -
apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_20.x | bash -
apt install nodejs -y
node --version && npm --version
npm ci
npm test
npm audit fix
