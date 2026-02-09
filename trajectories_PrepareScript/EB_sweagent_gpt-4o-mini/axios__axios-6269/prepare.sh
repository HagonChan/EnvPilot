

find_file '*.yml'
open "/testbed/.github/workflows/ci.yml"
find_file package.json
open "/testbed/package.json"
npm ci
apt update
apt install -y nodejs npm
npm ci
npm test
