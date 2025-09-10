ls -la
ls -la .github/workflows
open ".github/workflows/main.yml"
ls -la ./.github/setup
open "./.github/setup/action.yml"
node --version
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
apt-get update && apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
node --version && npm --version
npm install -g pnpm
pnpm --version
pnpm install
pnpm turbo --filter tests test-ci
