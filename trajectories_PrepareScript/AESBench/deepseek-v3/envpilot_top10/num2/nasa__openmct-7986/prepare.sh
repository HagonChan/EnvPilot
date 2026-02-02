ls -la
open ".nvmrc"
open "package.json"
find_file '*.yml' .github/workflows
open ".github/workflows/pr-platform.yml"
nvm install lts/* && nvm use lts/*
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
apt-get update && apt-get install -y curl
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && nvm install lts/* && nvm use lts/*
node --version

