ls -la
ls -la .github/workflows
open ".github/workflows/main.yml"
open "./.github/setup"
ls -la ./.github/setup
open "./.github/setup/action.yml"
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
apt-get update && apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
node --version && npm --version
npm install -g pnpm@9.4.0
apt-get install -y postgresql chromium libssl-dev build-essential
apt-get install -y chromium-browser

