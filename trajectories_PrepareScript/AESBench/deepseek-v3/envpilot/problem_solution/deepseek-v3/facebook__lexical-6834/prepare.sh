find_file '*.yml'
open ".github/workflows/tests.yml"
open ".github/workflows/call-core-tests.yml"
open "package.json"
node --version
curl -fsSL https://deb.nodesource.com/setup_18.x | bash -
apt-get update && apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
node --version
npm ci
npm run test-unit
