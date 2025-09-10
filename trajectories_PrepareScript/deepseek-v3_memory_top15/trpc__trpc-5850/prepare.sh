ls
open "package.json"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
apt-get update && apt-get install -y curl
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && nvm install 20.10.0
node --version
export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && nvm use 20.10.0
node --version
source $HOME/.nvm/nvm.sh && node --version
node --version
curl -sL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
node --version
npm install -g pnpm@8.15.5
pnpm --version
pnpm install
apt-get update && apt-get install -y postgresql libssl-dev ca-certificates build-essential python3
pnpm exec playwright install
pnpm test
