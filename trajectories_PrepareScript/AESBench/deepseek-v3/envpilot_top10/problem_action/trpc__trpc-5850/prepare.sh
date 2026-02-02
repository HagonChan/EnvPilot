ls -la
ls -la .github/workflows
open ".github/workflows/main.yml"
open "./.github/setup"
ls -la ./.github/setup
open "./.github/setup/action.yml"
apt-get update && apt-get install -y nodejs
node --version
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
apt-get install -y curl
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && nvm install 20 && nvm use 20
node --version
source ~/.nvm/nvm.sh && nvm use 20 && node --version
node --version
nvm install 20 && nvm use 20 && node --version
npm install -g pnpm@9.4.0
pnpm --version
pnpm install
apt-get update && apt-get install -y libnss3 libnspr4 libatk1.0-0 libatk-bridge2.0-0 libcups2 libxkbcommon0 libatspi2.0-0 libxdamage1 libpango-1.0-0 libcairo2 libasound2 libglib2.0-0 libgtk-3-0 libpng16-16 libevent-2.1-7 libicu-dev libffi-dev libx264-dev
pnpm install
pnpm test-ci
