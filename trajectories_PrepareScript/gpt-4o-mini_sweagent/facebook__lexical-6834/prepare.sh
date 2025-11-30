find_file '*.yml' .
open ".github/workflows/tests.yml"
open ".github/workflows/call-core-tests.yml"
open ".github/workflows/call-e2e-canary-tests.yml"
node -v
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash && export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && nvm install 18.18.0
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash && export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && nvm install 18.18.0
ls /usr/bin
apt-get update && apt-get install -y nodejs
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
apt-cache policy nodejs
npm ci
echo "deb https://deb.nodesource.com/node_18.x/ $(lsb_release -cs) main" | tee /etc/apt/sources.list.d/nodesource.list && apt-get update && apt-get install -y nodejs
echo "deb https://deb.nodesource.com/node_18.x/ jammy main" | tee /etc/apt/sources.list.d/nodesource.list && apt-get update && apt-get install -y nodejs
wget -qO- https://deb.nodesource.com/gpgkey/nodesource.gpg.key | apt-key add - && apt-get update && apt-get install -y nodejs
apt-cache search nodejs | grep ppa
npm ci
find_file package.json .
open "/testbed/package.json"
npm run test-unit
find_file README.md .
open "/testbed/README.md"
npm run test-e2e-chromium
