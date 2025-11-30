ls -la
ls -la .github/workflows/
open ".github/workflows/ci.yml"
node -v
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs

apt-get update
apt-cache showpkg nodejs
nvm --version
create install_node.sh
insert '#!/bin/bash

# Install Node.js version 20.x

NODE_VERSION=v20.5.0
DOWNLOAD_URL=https://nodejs.org/dist/$NODE_VERSION/node-$NODE_VERSION-linux-x64.tar.xz

# Download the binary
wget $DOWNLOAD_URL

# Extract the package
mkdir -p /usr/local/lib/nodejs
 tar -xJf node-$NODE_VERSION-linux-x64.tar.xz -C /usr/local/lib/nodejs

# Add Node.js to PATH
echo '"'"'
export PATH=/usr/local/lib/nodejs/bin:$PATH'"'"' >> /etc/profile
source /etc/profile' 0
chmod +x install_node.sh
./install_node.sh
edit 'wget $DOWNLOAD_URL' 'curl -O $DOWNLOAD_URL'
./install_node.sh
apt-get install -y curl
./install_node.sh
curl -s https://nodejs.org/en/download/ | grep -o 'https://.*\.tar\.xz' | head -n 1
edit 'DOWNLOAD_URL=https://nodejs.org/dist/$NODE_VERSION/node-$NODE_VERSION-linux-x64.tar.xz' DOWNLOAD_URL=https://nodejs.org/dist/v20.5.0/node-v20.5.0-linux-x64.tar.xz
./install_node.sh
which node
node -v
find_file package.json
open "/testbed/package.json"
mkdir -p /usr/local/lib/nodejs && cd /usr/local/lib/nodejs && curl -O https://nodejs.org/dist/v20.5.0/node-v20.5.0-linux-x64.tar.xz && tar -xf node-v20.5.0-linux-x64.tar.xz
apt-get install -y xz-utils
tar -xf node-v20.5.0-linux-x64.tar.xz

