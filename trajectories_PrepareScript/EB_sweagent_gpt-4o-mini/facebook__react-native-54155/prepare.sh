
find_file '*.yml'
open ".github/workflows/test-all.yml"
scroll_down
find_file requirements.txt
find_file setup.py
find_file pyproject.toml
find_file package.json
open "/testbed/package.json"
yarn install
npm install -g yarn
apt update
apt install -y nodejs
npm install -g yarn
node -v
apt install -y npm
npm install -g yarn
yarn install
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
apt install -y curl
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt install -y nodejs
apt remove -y nodejs libnode-dev
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt install -y nodejs
apt remove -y libnode72
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt install -y nodejs
npm install -g yarn
yarn install
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
nvm install node
npm install -g yarn
yarn install
yarn test
