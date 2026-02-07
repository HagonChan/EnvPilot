ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
open "package.json"
pnpm install
npm install -g pnpm@8.11.0
curl -fsSL https://deb.nodesource.com/setup_20.x | bash -
apt-get update && apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_20.x | bash -
apt install nodejs -y
node --version && npm --version
npm install -g pnpm@8.11.0
pnpm install
pnpm build
pnpm test
pnpm exec playwright install
pnpm exec playwright-core install
pnpm test
apt-get install -y libglib2.0-0 libnss3 libnspr4 libdbus-1-3 libatk1.0-0 libatk-bridge2.0-0 libcups2 libdrm2 libxkbcommon0 libatspi2.0-0 libxcomposite1 libxdamage1 libxfixes3 libxrandr2 libgbm1 libpango-1.0-0 libcairo2 libasound2
pnpm test
pnpm test:fixtures
