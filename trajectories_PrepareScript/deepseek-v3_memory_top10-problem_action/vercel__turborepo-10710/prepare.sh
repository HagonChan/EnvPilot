ls -la
ls -la .github/workflows
open ".github/workflows/turborepo-test.yml"
goto 200
open "./.github/actions/setup-node/action.yml"
open "package.json"
curl -fsSL https://deb.nodesource.com/setup_22.x | bash - && apt-get install -y nodejs
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
apt-get install -y curl
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
curl -fsSL https://deb.nodesource.com/setup_22.x | bash - && apt-get install -y nodejs
node --version && npm --version
npm install -g pnpm && corepack enable
pnpm install
npm install
npm test
npm install -g turbo
npm test
apt-get install -y cargo
npm install -g tsup
cd packages/turbo-releaser && npm install && cd ../../cli && npm install && cd ../..
cd packages/turbo-releaser && pnpm install && cd ../../cli && pnpm install && cd ../..
ls -la
cd cli && pnpm install && cd ..
npm test
