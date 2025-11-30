find_file '*.yml' .
open "/testbed/.github/workflows/nodejs.yml"
find_file package.json .
open "/testbed/package.json"
open "/testbed/swagger-ui-dist-package/package.json"
node -v
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
apt-get remove -y nodejs && curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
apt-get install -y curl
apt-get update
apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
npm ci
npm run test
