ls -la
ls -la .github/workflows
open ".github/workflows/nodejs.yml"
open "package.json"
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
apt-get update && apt-get install -y nodejs
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
apt-get install -y wget
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
wget https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh && chmod +x install.sh && ./install.sh
export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && nvm install 20
node --version && npm --version
export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && nvm use 20
node --version && npm --version
export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && nvm alias default 20 && nvm use default
node --version && npm --version
export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && nvm install 20 && nvm use 20
node --version && npm --version
source ~/.nvm/nvm.sh && node --version && npm --version
export PATH="$HOME/.nvm/versions/node/v20.0.0/bin:$PATH" && node --version && npm --version
wget https://nodejs.org/dist/v20.0.0/node-v20.0.0-linux-x64.tar.xz && tar -xf node-v20.0.0-linux-x64.tar.xz && export PATH="$PWD/node-v20.0.0-linux-x64/bin:$PATH" && node --version && npm --version
apt-get install -y xz-utils
tar -xf node-v20.0.0-linux-x64.tar.xz && export PATH="$PWD/node-v20.0.0-linux-x64/bin:$PATH" && node --version && npm --version
npm ci
npm run test:unit
npm run cy:ci
ps aux | grep json-server
json-server --watch test/e2e-selenium/db.json --port 3204 &

