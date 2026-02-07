ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
pnpm --version
npm --version
sudo apt update && sudo apt install -y nodejs npm
apt update && apt install -y nodejs npm
npm install -g pnpm
nvm --version
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
apt install -y curl
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
nvm install --lts
node --version && npm --version && pnpm --version
pnpm install
pnpm typecheck
pnpm build
pnpm test
