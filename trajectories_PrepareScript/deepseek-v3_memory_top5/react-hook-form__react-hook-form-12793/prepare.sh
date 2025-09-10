ls -la
ls -la .github/workflows
open ".github/workflows/build-test.yml"
open "package.json"
grep "engines" package.json
grep -A 5 "engines" package.json
node --version
dpkg --configure -a && curl -sL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
apt-get install -y curl
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
nvm install 18.17.1 && nvm use 18.17.1
node --version && npm --version
npm install -g pnpm
pnpm --version
pnpm install
pnpm run test
