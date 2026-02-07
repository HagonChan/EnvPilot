ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
open "package.json"
node --version
curl -sL https://deb.nodesource.com/setup_14.x | bash - && apt-get install -y nodejs
node --version
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
apt-get install -y curl
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
npm ci
apt-get install -y nodejs npm
npm --version
npm ci
npm test
