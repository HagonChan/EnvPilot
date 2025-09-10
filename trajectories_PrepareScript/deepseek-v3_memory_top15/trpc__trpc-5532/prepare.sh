ls -la
ls -la .github/workflows
open ".github/workflows/main.yml"
open "package.json"
node --version && pnpm --version
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
apt-get update && apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
node --version && npm --version
curl -fsSL https://get.pnpm.io/install.sh | sh -
npm install -g pnpm
pnpm --version
pnpm install
pnpm exec playwright install
pnpm turbo --filter tests test-ci
