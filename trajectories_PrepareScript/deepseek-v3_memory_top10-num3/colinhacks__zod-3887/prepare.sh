ls -la
ls -la .github/workflows
open ".github/workflows/test.yml"
node --version && npm --version && yarn --version
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
node --version && npm --version && curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && apt update && apt install -y yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && apt update && apt install -y yarn
apt-get update && apt-get install -y curl gnupg
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && apt update && apt install -y yarn
node --version && yarn --version
curl -fsSL https://deb.nodesource.com/setup_lts.x | bash - && apt-get install -y nodejs
node --version && yarn --version
yarn install
yarn test
