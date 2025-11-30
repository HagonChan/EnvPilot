find_file '*.yml' .
open "/testbed/.github/workflows/codeql-analysis.yml"
open "/testbed/.github/workflows/pr-platform.yml"
find_file README.md .
open "/testbed/README.md"
node --version
apt-get update
apt-get install -y nodejs npm
node --version
npm --version
npm install
nvm --version
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
apt-get install -y curl
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
export NVM_DIR="$HOME/.nvm"; [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"; [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
nvm install 18.14.2
npm install
npm test
apt-get install -y chromium-browser
export CHROME_BIN=/usr/bin/chromium-browser
npm test
snap --version
find_file karma.conf.cjs .
open "/testbed/karma.conf.cjs"
cat karma.conf.cjs
which firefox
apt-get install -y firefox
