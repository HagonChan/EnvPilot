find_file '*.yml' .
open "/testbed/.github/workflows/main.yml"
pnpm -v
apt-get update

npm install -g pnpm
apt-get install -y nodejs npm
npm install -g pnpm
pnpm turbo --filter "@trpc/*" build
node -v
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
apt-get install -y curl
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \.
 "$NVM_DIR/nvm.sh" && [ -s "$NVM_DIR/bash_completion" ] && \.
 "$NVM_DIR/bash_completion"
nvm install node
curl -sL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
apt-get remove -y nodejs npm
curl -sL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
apt-get remove -y nodejs
wget https://nodejs.org/dist/latest-v18.x/node-v18.17.0-linux-x64.tar.xz && tar -xJf node-v18.17.0-linux-x64.tar.xz && mv node-v18.17.0-linux-x64 /usr/local/node && ln -s /usr/local/node/bin/node /usr/bin/node && ln -s /usr/local/node/bin/npm /usr/bin/npm && ln -s /usr/local/node/bin/npx /usr/bin/npx
apt-get install -y wget
wget https://nodejs.org/dist/latest-v18.x/node-v18.17.0-linux-x64.tar.xz && tar -xJf node-v18.17.0-linux-x64.tar.xz && mv node-v18.17.0-linux-x64 /usr/local/node && ln -s /usr/local/node/bin/node /usr/bin/node && ln -s /usr/local/node/bin/npm /usr/bin/npm && ln -s /usr/local/node/bin/npx /usr/bin/npx
wget https://nodejs.org/dist/latest/node-v18.18.2-linux-x64.tar.xz && tar -xJf node-v18.18.2-linux-x64.tar.xz && mv node-v18.18.2-linux-x64 /usr/local/node && ln -s /usr/local/node/bin/node /usr/bin/node && ln -s /usr/local/node/bin/npm /usr/bin/npm && ln -s /usr/local/node/bin/npx /usr/bin/npx
curl -s https://nodejs.org/dist/index.json | jq -r ".[].version" | head -n 10
curl -s https://nodejs.org/dist/index.json
wget https://nodejs.org/dist/v25.1.0/node-v25.1.0-linux-x64.tar.xz && tar -xJf node-v25.1.0-linux-x64.tar.xz && mv node-v25.1.0-linux-x64 /usr/local/node && ln -s /usr/local/node/bin/node /usr/bin/node && ln -s /usr/local/node/bin/npm /usr/bin/npm && ln -s /usr/local/node/bin/npx /usr/bin/npx
tar -xJf node-v25.1.0-linux-x64.tar.xz && mv node-v25.1.0-linux-x64 /usr/local/node && ln -s /usr/local/node/bin/node /usr/bin/node && ln -s /usr/local/node/bin/npm /usr/bin/npm && ln -s /usr/local/node/bin/npx /usr/bin/npx
rm -f /usr/bin/node /usr/bin/npm /usr/bin/npx && ln -s /usr/local/node/bin/node /usr/bin/node && ln -s /usr/local/node/bin/npm /usr/bin/npm && ln -s /usr/local/node/bin/npx /usr/bin/npx
node -v && npm -v
npm install -g pnpm
npm install pnpm
curl -f https://get.pnpm.io/v6.js | node - add --global pnpm
pnpm turbo --filter "@trpc/*" build
pnpm add -D turbo
pnpm add -D turbo -w
pnpm turbo --filter "@trpc/*" build
pnpm turbo --filter tests test-ci
