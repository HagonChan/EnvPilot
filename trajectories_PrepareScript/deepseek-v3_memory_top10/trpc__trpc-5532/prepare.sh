ls -la
ls -la .github/workflows
open ".github/workflows/main.yml"
ls -la ./.github/setup
open "./.github/setup/action.yml"
npm install -g pnpm
apt-get update && apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_20.x | bash -
apt-get install -y nodejs
node --version && npm --version
npm install -g pnpm
pnpm --version
pnpm install
pnpm turbo --filter "@trpc/*" build
pnpm turbo --filter tests test-ci
pnpm turbo --filter tests test-ci
