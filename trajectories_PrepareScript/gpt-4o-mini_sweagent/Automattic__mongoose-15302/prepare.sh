find_file '*.yml' .
open ".github/workflows/test.yml"
find_file package.json .
open "package.json"
apt update
npm install
apt install nodejs npm
apt-cache search nodejs
apt install -y nodejs npm
npm install
node -v
command -v nvm
curl -s https://nodejs.org/dist/index.json | jq -r ".[].version"
apt install -y nodejs
wget https://nodejs.org/dist/latest-v18.x/node-v18.19.4-linux-x64.tar.xz
command -v curl
apt-cache policy nodejs
create install_node.sh
insert '#!/bin/bash

# Install NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash

# Load NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Install the latest version of Node.js
nvm install --lts

# Set installed version as global default
nvm alias default node
' 0
chmod +x install_node.sh
./install_node.sh
create install_node_from_source.sh
insert '#!/bin/bash

# Download the latest version of Node.js
wget https://nodejs.org/dist/latest/node-v18.19.4-linux-x64.tar.xz

# Extract the tarball
mkdir -p /usr/local/lib/nodejs
sudo tar -xJvf node-v18.19.4-linux-x64.tar.xz -C /usr/local/lib/nodejs --strip-components=1

# Set up environment variables
echo "export PATH=/usr/local/lib/nodejs/bin:$PATH" >> ~/.profile
source ~/.profile

# Verify installation
node -v
npm -v
' 0
chmod +x install_node_from_source.sh
./install_node_from_source.sh
open "install_node_from_source.sh"
edit wget 'curl -O'
edit 'sudo tar -xJvf' 'tar -xJvf'
./install_node_from_source.sh
apt-cache show nodejs
npm test

