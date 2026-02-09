

find_file '*.yml'
open "/testbed/.github/workflows/ci.yml"
scroll_down
find_file package.json
open "/testbed/package.json"
apt update
npm ci
apt install -y nodejs npm
npm ci
npx hereby runtests-parallel --light=false
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt install -y nodejs
apt install -y curl
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt install -y nodejs
apt remove -y libnode-dev
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt install -y nodejs
apt remove -y libnode72
apt remove -y libnode72 nodejs
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt install -y nodejs
npm ci
npx hereby runtests-parallel --light=false
