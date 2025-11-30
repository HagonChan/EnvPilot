ls -la
ls -la .github
ls -la .github/workflows
open ".github/workflows/test.yaml"
search_file dependencies .github/workflows/test.yaml
node -v
curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs
apt-get remove -y nodejs && curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs
apt-get update && apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs
apt-get remove -y libnode72 && apt-get install -y nodejs
dpkg --remove --force-remove-reinstreq libnode72 && apt-get install -y nodejs
apt-get remove -y nodejs libnode72 && curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs
yarn -v
npm install -g yarn
yarn install
search_file test .github/workflows/test.yaml
yarn test
NODE_OPTIONS="--max-old-space-size=4096" yarn test
open "package.json"
NODE_OPTIONS="--max-old-space-size=4096" yarn run test
find_file '*vitest*'
open "vitest.config.ts"
NODE_OPTIONS="--max-old-space-size=4096" npx vitest --run
