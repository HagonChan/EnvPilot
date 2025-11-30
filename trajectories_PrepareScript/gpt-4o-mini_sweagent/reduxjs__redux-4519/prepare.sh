find_file '*.yml' .
find_file requirements.txt .
find_file setup.py .
find_file pyproject.toml .
find_file package.json .
open "/testbed/package.json"
create setup.sh
insert '#!/bin/bash

# Check if Node.js is installed
if ! command -v node &> /dev/null
then
    echo "Node.js not found. Installing..."
    curl -fsSL https://deb.nodesource.com/setup_16.x | bash -
    apt-get install -y nodejs
fi

# Check if npm is installed
if ! command -v npm &> /dev/null
then
    echo "npm not found. Installing..."
    apt-get install -y npm
fi

# Install project dependencies
npm install
' 0
bash setup.sh
apt-get update
apt-get install -y curl
bash setup.sh
npm test
node -v
edit 'curl -fsSL https://deb.nodesource.com/setup_16.x | bash -' 'curl -fsSL https://deb.nodesource.com/setup_18.x | bash -'
bash setup.sh
npm test
open "/testbed/package.json"
rm -rf node_modules
npm install
npm test
