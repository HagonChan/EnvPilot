ls -la
ls -la .github/workflows
open ".github/workflows/build-test.yml"
open "package.json"
npm install -g pnpm
curl -fsSL https://get.pnpm.io/install.sh | sh -
wget -qO- https://get.pnpm.io/install.sh | sh -
apt-get update && apt-get install -y nodejs npm
npm install -g pnpm
npm install -g n && n 18.12.0
apt-get install -y curl
n 18.12.0
node --version && pnpm --version
pnpm install
pnpm run test --ci
