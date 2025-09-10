ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
open "package.json"
node --version
curl -sL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
apt-get update && apt-get install -y curl
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
nvm install 20 && nvm use 20
apt-get install -y python3
nvm install 20 && nvm use 20
node --version && npm --version
npm install -g pnpm@8.11.0
pnpm --version
pnpm install
pnpm test
pnpm install --force
pnpm test
pnpm add @nuxt/kit
pnpm add @nuxt/kit -w
pnpm test
ls -la node_modules/@nuxt
pnpm build
pnpm test
pnpm exec playwright install
pnpm exec playwright-core install
pnpm test
apt-get update && apt-get install -y libglib2.0-0 libnss3 libnspr4 libdbus-1-3 libatk1.0-0 libatk-bridge2.0-0 libcups2 libdrm2 libxkbcommon0 libatspi2.0-0 libxcomposite1 libxdamage1 libxfixes3 libxrandr2 libgbm1 libpango-1.0-0 libcairo2 libasound2
pnpm test
