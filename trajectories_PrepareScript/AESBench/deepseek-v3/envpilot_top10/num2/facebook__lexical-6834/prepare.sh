ls -la
ls -la .github/workflows
open ".github/workflows/tests.yml"
open ".github/workflows/call-core-tests.yml"
node --version
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
apt-get update && apt-get install -y curl
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
nvm install 18.18.0
nvm ls-remote | grep 18
nvm install-latest-npm
curl -sL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
node --version
curl -sL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
apt-get remove -y libnode72
dpkg --force-all -r libnode72 && apt-get install -y nodejs
node --version
npm --version
npm ci
npm run test-unit
