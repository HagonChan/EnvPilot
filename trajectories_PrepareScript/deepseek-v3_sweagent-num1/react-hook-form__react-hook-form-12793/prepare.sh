ls -la
ls -la .github/workflows
open ".github/workflows/build-test.yml"
open "package.json"
pnpm install
npm install -g pnpm
yarn --version
apt --version
apt update
apt install -y npm
npm install -g pnpm
node --version
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
apt install -y curl
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
nvm install --lts
node --version && pnpm --version
pnpm install
pnpm test
