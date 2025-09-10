ls -la
ls -la .github/workflows/
open ".github/workflows/calypso-live.yml"
open "package.json"
yarn install
npm install -g yarn
sudo apt-get update && sudo apt-get install -y nodejs npm
apt-get update && apt-get install -y nodejs npm
apt-get update && apt-get install -y nodejs npm
npm install -g yarn
yarn install
npm uninstall -g yarn && npm install -g yarn@1.22.22
yarn install
npm uninstall -g yarn && npm install -g yarn@1.22.22 --force
yarn --version
rm -rf ~/.yarn/releases/yarn-4.0.2.cjs
yarn --version
/usr/local/bin/yarn --version
curl -o- https://raw.githubusercontent.com/yarnpkg/yarn/1.22.22/install.sh | bash
apt-get install -y curl
curl -o- https://raw.githubusercontent.com/yarnpkg/yarn/1.22.22/install.sh | bash
wget https://github.com/yarnpkg/yarn/releases/download/v1.22.22/yarn-v1.22.22.tar.gz
apt-get install -y wget
wget https://github.com/yarnpkg/yarn/releases/download/v1.22.22/yarn-v1.22.22.tar.gz
tar -xzf yarn-v1.22.22.tar.gz && mv yarn-v1.22.22 /opt/yarn && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn
rm /usr/local/bin/yarn && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn
yarn --version
find / -name "yarn-4.0.2.cjs" -exec rm -f {} \;
yarn --version
rm -rf ~/.yarn
yarn --version
export PATH=/opt/yarn/bin:$PATH && yarn --version
npm install
open "package.json"
cat package.json
npm install -g yarn@4.0.2
yarn install
npm install
grep -A 100 "dependencies" package.json | grep -A 100 "devDependencies" | head -n 50
npm install @babel/core@^7.26.9 @babel/eslint-parser@^7.26.8 @babel/register@^7.25.9
grep -A 10 "scripts" package.json
ls -la | grep -i jest
ls -la | grep -i mocha
find . -name "*.config.js" | grep -i test
which jest || find . -name "jest" -type f
npm install -g jest
node --version
curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs
apt-get remove -y libnode-dev

