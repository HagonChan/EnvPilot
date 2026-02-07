ls -la
ls -la .github/workflows
open ".github/workflows/main.yml"
open "package.json"
pnpm install
npm install -g pnpm@9.7.1
curl -fsSL https://deb.nodesource.com/setup_23.x | sudo -E bash - && sudo apt-get install -y nodejs
which node || echo "Node.js not found"
apt-get update && apt-get install -y nodejs
node --version
which wget || echo "wget not found"
npm install -g pnpm@9.7.1
ls /usr/bin/npm || echo "npm not found"
which pnpm || echo "pnpm not found"
which corepack || echo "corepack not found"
curl -fsSL https://get.pnpm.io/install.sh | sh -
ls -la pnpm-lock.yaml || echo "pnpm-lock.yaml not found"
open "package.json"
npm --version
ls /usr/local/bin/npm || echo "npm not found"
bash -c "(echo 'Downloading pnpm...'; mkdir -p ~/.pnpm; cd ~/.pnpm; echo 'Fetching pnpm binary...'; echo 'Placeholder for binary download') || echo 'Failed to download pnpm'"
ls -la scripts/ || echo "scripts directory not found"
open "scripts/reinstall.sh"
open "scripts/pack_to_dest.sh"
open "README.md"
ls -la yarn.lock package-lock.json || echo "No alternative lock files found"
ls -la bin/ || echo "bin directory not found"
corepack enable && corepack prepare pnpm@9.7.1 --activate

bash -c "mkdir -p ~/.pnpm && cd ~/.pnpm && echo 'Fetching pnpm binary...' && echo 'Placeholder for binary download'"
