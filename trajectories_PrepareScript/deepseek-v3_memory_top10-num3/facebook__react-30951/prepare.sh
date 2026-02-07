ls -la
ls -la .github
ls -la .github/workflows
open ".github/workflows/runtime_build_and_test.yml"
open ".nvmrc"
apt-get update && apt-get install -y git tar gzip nodejs npm yarn default-jre playwright
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && apt-get update && apt-get install -y yarn
apt-get install -y curl gnupg
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && apt-get update && apt-get install -y yarn
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
apt-get remove -y libnode72 && apt-get install -y nodejs
dpkg --force-all -r libnode72 && apt-get install -y nodejs
node --version && npm --version
apt-get update && apt-get install -y libnss3 libnspr4 libatk1.0-0 libatk-bridge2.0-0 libcups2 libxkbcommon0 libatspi2.0-0 libxdamage1 libpango-1.0-0 libcairo2 libasound2 libglib2.0-0 libgtk-3-0 libpng16-16 libevent-2.1-7 libicu-dev libffi-dev libx264-dev
yarn install --frozen-lockfile
yarn config set registry https://registry.npmjs.org && yarn install --frozen-lockfile
export ELECTRON_SKIP_BINARY_DOWNLOAD=1 && yarn install --frozen-lockfile
yarn playwright install
yarn test
