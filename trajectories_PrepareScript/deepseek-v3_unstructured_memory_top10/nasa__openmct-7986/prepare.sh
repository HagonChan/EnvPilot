ls -la
ls -la .github/workflows
open ".github/workflows/e2e-pr.yml"
open "package.json"
open ".nvmrc"
apt-get update && apt-get install -y nodejs npm
node --version && npm --version
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
apt-get install -y curl
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
nvm install $(cat .nvmrc) && nvm use $(cat .nvmrc)
node --version && npm --version
npm ci --no-audit --progress=false
npx playwright install-deps
npx playwright install
npm run test:e2e:full -- --max-failures=40
npx playwright show-report ../html-test-results
ls -la playwright-report
npm run test:e2e:full -- --max-failures=40 --reporter=html
