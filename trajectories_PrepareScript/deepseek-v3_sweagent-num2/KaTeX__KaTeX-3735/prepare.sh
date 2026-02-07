ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
open "package.json"
goto 100
node --version
curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs
apt-get update && apt-get install -y ca-certificates curl gnupg && mkdir -p /etc/apt/keyrings && curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg && echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_16.x nodistro main" | tee /etc/apt/sources.list.d/nodesource.list && apt-get update && apt-get install nodejs -y
apt-get remove -y libnode72 && apt-get install -y nodejs
dpkg -i --force-overwrite /var/cache/apt/archives/nodejs_16.20.2-1nodesource1_amd64.deb
curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs
apt-get purge -y nodejs libnode72 && apt-get autoremove -y && curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs
node --version
npm install -g yarn
yarn --version
yarn --immutable
yarn test:lint
npx update-browserslist-db@latest
yarn test:flow
yarn test:jest --coverage
