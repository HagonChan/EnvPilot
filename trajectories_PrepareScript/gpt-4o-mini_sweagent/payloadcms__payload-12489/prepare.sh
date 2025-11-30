
find_file '*.yml'
open ".github/workflows/main.yml"
scroll_down
find_file package.json
open "/testbed/package.json"
curl -fsSL https://deb.nodesource.com/setup_23.x | bash - && apt-get install -y nodejs && npm install -g pnpm@9.7.1
apt-get install -y npm
apt-get update
apt-get install -y npm
npm install -g pnpm@9.7.1
pnpm install
apt-get remove -y nodejs npm && curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
npm install -g n && n latest
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
apt-get remove -y libnode-dev && apt-get install -y nodejs
apt-get remove -y libnode72 && apt-get install -y nodejs
dpkg --remove --force-remove-reinstreq libnode72 && apt-get install -y nodejs
apt-get remove -y nodejs libnode72 && apt-get install -y nodejs
npm install -g pnpm@9.7.1
pnpm install
pnpm test:unit
pnpm test:int
pnpm test:e2e
pnpm exec playwright install
apt-get install -y libnss3 libnspr4 libgbm1 libasound2
pnpm test:e2e
pnpm run build:all
pnpm test:e2e
pnpm run build:all
pnpm test:e2e
