ls -a
ls -a .github/workflows
open ".github/workflows/build-test.yml"
open ".github/actions/install-dependencies/action.yml"
open "package.json"
npm install -g pnpm@9
curl -fsSL https://get.pnpm.io/install.sh | sh -
wget -qO- https://get.pnpm.io/install.sh | sh -
apt update
apt install -y curl
curl -fsSL https://get.pnpm.io/install.sh | sh -
curl -L https://github.com/pnpm/pnpm/releases/latest/download/pnpm-linux-x64 -o pnpm
chmod +x pnpm && mv pnpm /usr/local/bin/
pnpm --version
pnpm install --frozen-lockfile
command -v nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
nvm install 20
node --version && npm --version
pnpm install --frozen-lockfile
pnpm test
pnpm build
pnpm lint
pnpm type
