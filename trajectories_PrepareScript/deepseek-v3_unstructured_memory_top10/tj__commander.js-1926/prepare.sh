ls -la
ls -la .github/workflows
open ".github/workflows/tests.yml"
open "package.json"
node --version
apt-get update && apt-get install -y nodejs npm
node --version
curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs
apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs
apt-get update && apt-get install -y ca-certificates && update-ca-certificates
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && nvm install 16
node --version
npm ci
npm audit fix
npm test
