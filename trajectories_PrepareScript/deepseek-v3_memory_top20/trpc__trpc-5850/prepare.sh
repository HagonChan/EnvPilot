ls -la
ls -la .github/workflows
open ".github/workflows/main.yml"
open ".github/setup"
ls -la .github/setup
open ".github/setup/action.yml"
open "package.json"
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
apt-get update && apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
npm install -g pnpm@8.15.5
apt-get install -y postgresql libssl-dev ca-certificates build-essential python3
pnpm install
pnpm test-ci

