ls -la
ls -la .github/workflows
open ".github/workflows/test.yml"
open "package.json"
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
node --version && npm --version
apt-get remove -y nodejs && curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
apt-get update && apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
apt-get remove -y libnode72 && curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
apt-get install -y -f && dpkg -i --force-overwrite /var/cache/apt/archives/nodejs_18.20.6-1nodesource1_amd64.deb
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
rm -f /usr/share/systemtap/tapset/node.stp && apt-get install -y nodejs
apt-get remove -y libnode72 && apt-get install -y nodejs
apt-get purge -y libnode72 && apt-get install -y nodejs
rm -f /usr/share/systemtap/tapset/node.stp && apt-get install -y nodejs
apt-get purge -y libnode72 && apt-get autoremove -y && apt-get install -y nodejs
rm -f /usr/share/systemtap/tapset/node.stp && dpkg -i --force-overwrite /var/cache/apt/archives/nodejs_18.20.6-1nodesource1_amd64.deb
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
apt-get purge -y libnode72 && rm -rf /usr/share/systemtap/tapset/node.stp && apt-get install -y nodejs
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && nvm install 18
node --version && npm --version
npm install
npm test
