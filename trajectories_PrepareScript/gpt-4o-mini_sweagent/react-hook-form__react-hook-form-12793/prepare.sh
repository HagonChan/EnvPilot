find_file '*' .github/workflows
open ".github/workflows/build-test.yml"
find_file '*' .github/actions
open ".github/actions/install-dependencies/action.yml"
apt update
apt install -y nodejs
node -v
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt install -y nodejs
apt install -y curl
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt install -y nodejs
npm install -g pnpm
pnpm install --frozen-lockfile
pnpm run test --ci

