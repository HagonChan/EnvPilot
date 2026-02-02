ls -la
ls -la .github/workflows
open ".github/workflows/main.yml"
open ".github/setup"
ls -la .github/setup
open ".github/setup/action.yml"
open "package.json"
apt-get update
apt-get install -y postgresql libssl-dev ca-certificates build-essential python3
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
npm install -g pnpm
node --version && pnpm --version
pnpm install
pnpm test-ci
