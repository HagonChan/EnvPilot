ls -la
ls -la .github/workflows
open ".github/workflows/main.yml"
scroll_down
apt-get update && apt-get install -y nodejs
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
apt-get install -y curl
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
nvm install 23.11.0
npm install -g pnpm@9.7.1
node --version && pnpm --version
pnpm install
pnpm test:unit
pnpm test:types --target '>=5.7'
pnpm exec playwright install-deps
pnpm exec playwright install
pnpm test:integration --db=memory
open "package.json"
pnpm test:int:memory
pnpm test:int
pnpm test:int:postgres
apt-get install -y postgresql postgresql-contrib && service postgresql start
pnpm test:int:postgres
sudo -u postgres psql -c "\du"

