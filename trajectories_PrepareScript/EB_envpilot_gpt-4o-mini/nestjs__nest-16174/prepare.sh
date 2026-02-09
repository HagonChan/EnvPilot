

find_file '*.yml'
open ".github/workflows/codeql-analysis.yml"
open ".circleci/config.yml"
apt update
npm install --legacy-peer-deps
apt install -y nodejs npm
npm install --legacy-peer-deps
apt remove -y nodejs npm && curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt install -y nodejs
apt remove -y nodejs npm && curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt install -y nodejs
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt install -y nodejs
npm install -g n && n 20
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
apt install -y curl
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
wget https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh -O install_nvm.sh && bash install_nvm.sh
apt install -y wget
wget https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh -O install_nvm.sh && bash install_nvm.sh
curl -O https://nodejs.org/dist/v20.0.0/node-v20.0.0-linux-x64.tar.xz && tar -xf node-v20.0.0-linux-x64.tar.xz && cp -r node-v20.0.0-linux-x64/* /usr/local/
cp -r node-v20.0.0-linux-x64/* /usr/local/
node -v && npm -v
curl -L https://www.npmjs.com/install.sh | sh
npm install --legacy-peer-deps
ln -s /usr/local/bin/npm /usr/bin/npm
npm -v
npm install --legacy-peer-deps
npm run test
