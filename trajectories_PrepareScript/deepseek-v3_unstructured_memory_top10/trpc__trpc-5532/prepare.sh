ls -la
ls -la .github/workflows
open ".github/workflows/main.yml"
open "package.json"
node --version && pnpm --version
apt-get update && apt-get install -y nodejs npm
node --version && npm --version
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
apt-get remove -y libnode-dev && apt-get install -y nodejs
node --version && npm --version
npm install -g pnpm@8.10.5
pnpm --version
pnpm install
pnpm exec playwright install-deps
pnpm exec playwright install
pnpm turbo --filter "@trpc/*" build
pnpm turbo --filter tests test-ci
