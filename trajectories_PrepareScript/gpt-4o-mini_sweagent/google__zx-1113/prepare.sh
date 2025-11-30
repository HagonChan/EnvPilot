find_file '*.yml' .
open "/testbed/.github/workflows/test.yml"
node -v
apt-get update
curl -fsSL https://deb.nodesource.com/setup_22.x | bash - && apt-get install -y nodejs

apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_22.x | bash - && apt-get install -y nodejs

node -v
npm -v
npm ci
goto 1
npm run fmt:check
npm run test:license
npm run build
npm run test:license
npm run test:size
npm run test:audit
npm run test:circular
npm run test:it
