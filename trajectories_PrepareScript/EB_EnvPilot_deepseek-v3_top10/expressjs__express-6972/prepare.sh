ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
node --version && npm --version
sudo apt-get update && sudo apt-get install -y ca-certificates curl gnupg
apt-get update && apt-get install -y ca-certificates curl gnupg
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
node --version && npm --version
npm install --ignore-scripts --include=dev
open "package.json"
npm test
