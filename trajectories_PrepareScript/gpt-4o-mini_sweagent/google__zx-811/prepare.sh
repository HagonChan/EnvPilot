ls -R
open "package.json"
open "README.md"
apt-get update
npm run build
apt-get install -y nodejs npm
npm run build
node -v
curl -fsSL https://deb.nodesource.com/setup_16.x | bash -
wget -qO- https://deb.nodesource.com/setup_16.x | bash -
search_file test
npm test
open "package.json"
node ./test/all.test.js
