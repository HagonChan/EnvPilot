

find_file '*.yml'
open "/testbed/.github/workflows/ci.yml"
find_file package.json
open "/testbed/package.json"
pnpm install
npm install -g pnpm
apt update
apt install -y nodejs
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
apt install -y curl
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
apt-cache show nodejs
curl -fsSL https://deb.nodesource.com/setup_18.x | bash -
apt install -y nodejs
apt remove -y nodejs libnode72
apt install -y nodejs
pnpm install
npm install -g pnpm
pnpm install
pnpm run test:unit
pnpm run test:ssr
pnpm run test:e2e
apt install -y libgconf-2-4 libgirepository-1.0-1 libgtk-3-0 libxss1 libasound2
pnpm run test:e2e
apt install -y libnss3
pnpm run test:e2e
apt install -y libdrm2
pnpm run test:e2e
apt install -y libgbm1
pnpm run test:e2e
create run_e2e_tests.sh
insert '#!/bin/bash
pnpm run test:e2e -- --no-sandbox' 1
chmod +x run_e2e_tests.sh
./run_e2e_tests.sh
open "/testbed/run_e2e_tests.sh"
edit 'pnpm run test:e2e -- --no-sandbox' 'pnpm run test:e2e --no-sandbox'
./run_e2e_tests.sh
edit 'pnpm run test:e2e --no-sandbox' 'pnpm run test:e2e -- --no-sandbox'
./run_e2e_tests.sh
edit 'pnpm run test:e2e -- --no-sandbox' 'pnpm run test:e2e --no-sandbox'
./run_e2e_tests.sh
create run_e2e_tests_with_sandbox.sh
insert '#!/bin/bash
PUPPETEER_SKIP_DOWNLOAD=true pnpm run test:e2e --no-sandbox' 1
chmod +x run_e2e_tests_with_sandbox.sh
./run_e2e_tests_with_sandbox.sh
edit 'PUPPETEER_SKIP_DOWNLOAD=true pnpm run test:e2e --no-sandbox' 'PUPPETEER_SKIP_DOWNLOAD=true pnpm run test:e2e -- --no-sandbox'
./run_e2e_tests_with_sandbox.sh

