ls -la
open "package.json"
node --version && npm --version
apt-get update && apt-get install -y nodejs npm
node --version && npm --version
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
apt-get install -y curl
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
nvm install 18.17.1 && nvm use 18.17.1
node --version && npm --version
npm install
npm install --legacy-peer-deps
npm config list
npm install --no-optional
npm test
open "package.json"
cat package.json
npx jest --config ./configs/ts-jest.config.json
npm audit fix
