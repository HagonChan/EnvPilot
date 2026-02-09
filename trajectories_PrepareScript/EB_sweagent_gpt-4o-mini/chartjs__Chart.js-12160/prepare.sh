
find_file '*.yml'
open ".github/workflows/ci.yml"
find_file package.json
open "/testbed/package.json"
pnpm install
npm install -g pnpm
apt update
apt install -y nodejs
npm install -g pnpm
curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && apt install -y nodejs
apt install -y npm
npm install -g pnpm
pnpm install
apt remove -y nodejs
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt install -y nodejs
apt install -y nodejs npm
npm install -g pnpm
pnpm install
apt remove -y nodejs
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt install -y nodejs
npm install -g n
apt install -y nodejs=18.* npm
apt install -y curl
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
apt-cache showpkg nodejs
wget https://nodejs.org/dist/v18.12.0/node-v18.12.0-linux-x64.tar.xz && tar -xf node-v18.12.0-linux-x64.tar.xz && cp -r node-v18.12.0-linux-x64/* /usr/local/
apt install -y wget
wget https://nodejs.org/dist/v18.12.0/node-v18.12.0-linux-x64.tar.xz && tar -xf node-v18.12.0-linux-x64.tar.xz && cp -r node-v18.12.0-linux-x64/* /usr/local/
tar -xf node-v18.12.0-linux-x64.tar.xz && cp -r node-v18.12.0-linux-x64/* /usr/local/
npm install -g pnpm
curl -L https://www.npmjs.com/install.sh | sh
npm install -g pnpm
ln -s /usr/local/bin/npm /usr/bin/npm
npm install -g pnpm
pnpm install
pnpm run test-ci
pnpm run build
find_file karma.conf.cjs
open "/testbed/karma.conf.cjs"
edit 'browsers: (args.browsers || '"'"'chrome,firefox'"'"').split('"'"','"'"')' 'browsers: (args.browsers || '"'"'ChromeHeadless,FirefoxHeadless'"'"').split('"'"','"'"')'
pnpm run test-ci
apt install -y chromium-browser firefox
pnpm run test-ci
export CHROME_BIN=/usr/bin/chromium-browser && pnpm run test-ci
edit 'browsers: (args.browsers || '"'"'ChromeHeadless,FirefoxHeadless'"'"').split('"'"','"'"')' 'browsers: (args.browsers || '"'"'Chrome,Firefox'"'"').split('"'"','"'"')'
pnpm run test-ci
edit 'browsers: (args.browsers || '"'"'ChromeHeadless,FirefoxHeadless'"'"').split('"'"','"'"')' 'browsers: (args.browsers || '"'"'Chrome,Firefox'"'"').split('"'"','"'"')'
open "/testbed/karma.conf.cjs"

