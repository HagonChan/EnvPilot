ls -la
ls -la .github/workflows
open ".github/workflows/tests.yml"
open "package.json"
nvm --version
curl -sL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs
node --version && npm --version
curl -sL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs
apt-get install -y curl
curl -sL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs
apt-get remove -y libnode72
dpkg --force-overwrite -i /var/cache/apt/archives/nodejs_16.20.2-1nodesource1_amd64.deb
curl -sL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs
rm -f /usr/share/systemtap/tapset/node.stp && apt-get install -y nodejs
apt-get purge -y nodejs libnode72 && curl -sL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs
node --version && npm --version
npm ci
npm test
