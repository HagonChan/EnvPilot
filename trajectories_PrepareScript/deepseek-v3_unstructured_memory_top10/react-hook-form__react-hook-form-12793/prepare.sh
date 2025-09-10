ls
open "README.md"
open "package.json"
find_file '.github/workflows/*.yml'
find_file .gitlab-ci.yml
find_file .circleci/config.yml
node --version && npm --version
apt-get update && apt-get install -y nodejs npm
node --version && npm --version
npm install -g pnpm
npm install -g n && n 18.12.0
apt-get install -y curl
n 18.12.0
node --version && hash -r && node --version
pnpm --version
pnpm install
pnpm test
