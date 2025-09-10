ls -la
ls -la .github/workflows
open ".github/workflows/test.yml"
open "package.json"
nvm install 20.x && nvm use 20.x
apt-get update && apt-get install -y nodejs
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
node --version && npm --version
npm ci
npm run test
which nc || apt-get install -y netcat-openbsd
grep -r "script-from-path" .
echo '#!/bin/bash
echo "script-from-path executed"' > /tmp/script-from-path && chmod +x /tmp/script-from-path && export PATH="/tmp:$PATH"
npm run test
FORCE_COLOR=1 npm run test
