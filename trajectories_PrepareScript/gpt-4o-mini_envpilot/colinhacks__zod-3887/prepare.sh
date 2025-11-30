
ls -R
open "package.json"
node --version && npm --version
apt-get install -y nodejs
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
apt list --installed | grep node
apt-get update
curl -fsSL https://deb.nodesource.com/setup_21.x | bash - && apt-get install -y nodejs
apt-get install -y nodejs
apt-cache policy nodejs
ls -a
open "README.md"
goto 66
scroll_down
scroll_down
scroll_down
scroll_down
scroll_down
curl -fsSL https://deb.nodesource.com/setup_21.x | bash - && apt-get install -y nodejs
create install_nvm.sh
open "install_nvm.sh"
insert '#!/bin/bash

# Install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

# Load nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Install Node.js version 21.7.3
nvm install 21.7.3
nvm use 21.7.3
'
bash install_nvm.sh
apt-get install -y nodejs
npm install --legacy-peer-deps

create install_npm.sh
open "install_npm.sh"
insert 'curl -L https://www.npmjs.com/install.sh | sh
'
bash install_npm.sh
ls -a
npm install --legacy-peer-deps
