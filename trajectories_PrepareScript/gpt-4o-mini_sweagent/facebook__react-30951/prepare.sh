find_file '*.yml' .
open ".github/workflows/runtime_build_and_test.yml"
goto 98
find_file .nvmrc .
open ".nvmrc"
nvm install 18.20.1
apt update
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt install -y nodejs=18.20.1-1nodesource1
apt-cache policy nodejs
apt install -y nodejs
npm install -g yarn
apt install -y npm
npm install -g yarn
yarn install --frozen-lockfile
wget https://nodejs.org/dist/v18.20.1/node-v18.20.1-linux-x64.tar.xz && tar -xf node-v18.20.1-linux-x64.tar.xz && cp -r node-v18.20.1-linux-x64/{bin,include,lib,share} /usr/
curl -O https://nodejs.org/dist/v18.20.1/node-v18.20.1-linux-x64.tar.xz && tar -xf node-v18.20.1-linux-x64.tar.xz && cp -r node-v18.20.1-linux-x64/{bin,include,lib,share} /usr/
apt install -y nodejs
snap --version
node -v
yarn install --frozen-lockfile




