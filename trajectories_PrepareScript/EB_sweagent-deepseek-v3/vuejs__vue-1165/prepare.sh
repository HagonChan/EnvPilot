ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
open "package.json"
npm install -g pnpm
curl -fsSL https://get.pnpm.io/install.sh | sh
wget -qO- https://get.pnpm.io/install.sh | sh
node --version
apt-get update && apt-get install -y nodejs
curl -fsSL https://deb.nodesource.com/setup_18.x | bash -
apt-get install -y wget
wget -qO- https://deb.nodesource.com/setup_18.x | bash -
apt-get install -y nodejs
apt-get remove -y libnode72
apt-get install -y --fix-broken
rm -f /usr/share/systemtap/tapset/node.stp && apt-get install -y nodejs
apt-get purge -y nodejs libnode72 && apt-get install -y nodejs
node --version && npm --version
npm install -g pnpm
pnpm --version
pnpm install
pnpm install
pnpm config set registry https://registry.npmmirror.com
pnpm install
pnpm run test:unit
