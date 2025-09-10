ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
open ".nvmrc"
apt-get update && apt-get install -y nodejs npm
node --version && npm --version
command -v nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
apt-get install -y curl
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
nvm install 22
node --version && npm --version
npm ci
npm audit fix
npm test
npm run build-serial
npm test
