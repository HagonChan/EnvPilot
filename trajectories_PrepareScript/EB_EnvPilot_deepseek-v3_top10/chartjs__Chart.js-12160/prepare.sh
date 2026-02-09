ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
node --version
curl -fsSL https://deb.nodesource.com/setup_16.x | bash -
apt-get update && apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_16.x | bash -
apt install nodejs -y
node --version
npm install -g pnpm
pnpm --version
npm install -g pnpm@6
pnpm --version
pnpm install
npm install -g pnpm@7
pnpm --version
open "package.json"
pnpm install --ignore-scripts
cat .npmrc
pnpm install --ignore-scripts --unsafe-perm
curl -fsSL https://deb.nodesource.com/setup_18.x | bash -
apt install nodejs -y
node --version
npm install -g pnpm
pnpm --version
pnpm install
pnpm install
pnpm run test-ci
pnpm run build
pnpm run test-ci
npx update-browserslist-db@latest
apt-get update && apt-get install -y chromium-browser firefox
export CHROME_BIN=/usr/bin/chromium-browser && export FIREFOX_BIN=/usr/bin/firefox
pnpm run test-ci
snap install chromium firefox
apt-get update && apt-get install -y snapd
systemctl start snapd
snapd
apt-get update && apt-get install -y chromium-browser firefox
which chromium-browser && which firefox
export CHROME_BIN=/usr/bin/chromium-browser && export FIREFOX_BIN=/usr/bin/firefox && pnpm run test-ci
edit '"test-ci": "concurrently \"pnpm:test-ci-*\""' '"test-ci": "pnpm --filter \"./test/integration/**\" test"'
pnpm run test-ci
