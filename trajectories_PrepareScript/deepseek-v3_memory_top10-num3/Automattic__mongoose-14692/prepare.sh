ls -la
ls -la .github/workflows
open ".github/workflows/test.yml"
node --version && npm --version
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
apt-get install -y curl
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
nvm install 18 && nvm use 18
node --version && npm --version
npm install
npm test
