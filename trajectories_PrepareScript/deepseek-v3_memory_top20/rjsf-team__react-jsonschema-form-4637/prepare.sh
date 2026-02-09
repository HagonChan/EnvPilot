ls
open "package.json"
node --version && npm --version
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
node --version && npm --version
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
apt-get remove -y nodejs && curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
apt-get update && apt-get install -y curl && curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
node --version && npm --version
npm ci
nx run-many --parallel=2 --target=test
npm install -g nx
nx run-many --parallel=2 --target=test
nx run-many --parallel=2 --target=build
nx run-many --parallel=2 --target=test
