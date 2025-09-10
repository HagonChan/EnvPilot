find_file '.github/workflows/*.yml'
find_file .gitlab-ci.yml
find_file .circleci/config.yml
find_file package.json
open "/testbed/package.json"
nvm install 18.18.0 && nvm use 18.18.0
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
wget https://nodejs.org/dist/v18.18.0/node-v18.18.0-linux-x64.tar.xz && tar -xf node-v18.18.0-linux-x64.tar.xz && cp -R node-v18.18.0-linux-x64/* /usr/local/
apt-get update && apt-get install -y wget
wget https://nodejs.org/dist/v18.18.0/node-v18.18.0-linux-x64.tar.xz && tar -xf node-v18.18.0-linux-x64.tar.xz && cp -R node-v18.18.0-linux-x64/* /usr/local/
apt-get install -y xz-utils
tar -xf node-v18.18.0-linux-x64.tar.xz && cp -R node-v18.18.0-linux-x64/* /usr/local/
node --version
npm ci
npm test
search_file test /testbed/package.json
npm run test-unit
npm run test-integration
wget https://nodejs.org/dist/v18.19.0/node-v18.19.0-linux-x64.tar.xz && tar -xf node-v18.19.0-linux-x64.tar.xz && cp -R node-v18.19.0-linux-x64/* /usr/local/
node --version
npm run test-integration
apt-get install -y libglib2.0-0 libnspr4 libnss3 libdbus-1-3 libatk1.0-0 libatk-bridge2.0-0 libatspi2.0-0 libxcomposite1 libxdamage1 libxfixes3 libxrandr2 libgbm1 libxkbcommon0 libasound2
npm run test-integration
find_file playwright.config.ts
open "/testbed/scripts/__tests__/integration/fixtures/lexical-esm-nextjs/playwright.config.ts"
cd /testbed/scripts/__tests__/integration/fixtures/lexical-esm-nextjs && npm run start
open "/testbed/scripts/__tests__/integration/fixtures/lexical-esm-nextjs/package.json"
cd /testbed/scripts/__tests__/integration/fixtures/lexical-esm-nextjs && npm run build && npm run start
