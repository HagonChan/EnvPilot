
find_file '*.yml'
open ".github/workflows/test.yml"
find_file .node-version
open ".node-version"
apt update
n 22.14.0
curl -fsSL https://deb.nodesource.com/setup_22.x | bash - && apt install -y nodejs
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
node -v
npm install -g pnpm
find_file 'README*'
open "README.md"

goto 98

goto 90
find_file Makefile
find_file package.json
open "package.json"
npm run test
open "packages/mermaid/package.json"
find_file '*' tests
open "tests/webpack/package.json"
npm run build --prefix tests/webpack

npm run build --prefix tests/webpack

npm run build --prefix tests/webpack

npm run build --prefix tests/webpack

npm run build --prefix tests/webpack
find_file '*' tests
open "tests/webpack/src/index.js"
open "tests/webpack/webpack.config.js"
