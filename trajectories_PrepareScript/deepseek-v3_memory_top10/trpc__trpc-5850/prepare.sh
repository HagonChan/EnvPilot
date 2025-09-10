ls -la
ls -la .github/workflows
open ".github/workflows/main.yml"
open ".github/setup"
ls -la .github/setup
open ".github/setup/action.yml"
ls -la
open "README.md"
find . -name "Makefile" -o -name "CMakeLists.txt"
open "package.json"
apt-get update && apt-get install -y gcc g++ libssl-dev libyaml-dev flex bison cmake make
pnpm install
npm install -g pnpm
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
apt-get install -y curl && curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
npm install -g pnpm
pnpm install
pnpm test-ci
