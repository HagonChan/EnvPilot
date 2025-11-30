ls -la
find_file '*' .github/workflows
open "tests.yml"
open ".github/workflows/codeql-analysis.yml"
open ".github/workflows/tests.yml"
open "package.json"
create install.sh
open "install.sh"
edit '' '#!/bin/bash

# Create a directory for dependencies
mkdir -p node_modules

# Install each dependency manually
npm install @types/jest@^29.2.4 --no-save
npm install @types/node@^20.2.5 --no-save
npm install @typescript-eslint/eslint-plugin@^5.47.1 --no-save
npm install @typescript-eslint/parser@^5.47.1 --no-save
npm install eslint@^8.30.0 --no-save
npm install eslint-config-standard@^17.0.0 --no-save
npm install eslint-config-standard-with-typescript@^33.0.0 --no-save
npm install eslint-plugin-import@^2.26.0 --no-save
npm install eslint-plugin-jest@^27.1.7 --no-save
npm install eslint-plugin-n@^15.6.0 --no-save
npm install eslint-plugin-promise@^6.1.1 --no-save
npm install jest@^29.3.1 --no-save
npm install ts-jest@^29.0.3 --no-save
npm install tsd@^0.28.1 --no-save
npm install typescript@^5.0.4 --no-save' False
insert '#!/bin/bash

# Create a directory for dependencies
mkdir -p node_modules' 0
insert 'npm install @types/jest@^29.2.4 --no-save' 4
insert 'npm install @types/node@^20.2.5 --no-save' 5
insert 'npm install @typescript-eslint/eslint-plugin@^5.47.1 --no-save' 6
insert 'npm install @typescript-eslint/parser@^5.47.1 --no-save' 7
insert 'npm install eslint@^8.30.0 --no-save' 8
insert 'npm install eslint-config-standard@^17.0.0 --no-save' 9
insert 'npm install eslint-config-standard-with-typescript@^33.0.0 --no-save' 10
insert 'npm install eslint-plugin-import@^2.26.0 --no-save' 11
insert 'npm install eslint-plugin-jest@^27.1.7 --no-save' 12
insert 'npm install eslint-plugin-n@^15.6.0 --no-save' 13
insert 'npm install eslint-plugin-promise@^6.1.1 --no-save' 14
insert 'npm install jest@^29.3.1 --no-save' 15
insert 'npm install ts-jest@^29.0.3 --no-save' 16
insert 'npm install tsd@^0.28.1 --no-save' 17
insert 'npm install typescript@^5.0.4 --no-save' 18
bash install.sh
node -v
apt update
apt install nodejs npm -y
bash install.sh
npm test
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt install -y nodejs
apt search nodejs
apt remove nodejs -y
apt install nodejs -y
apt remove nodejs -y
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
apt install curl -y
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
nvm install node
npm test
