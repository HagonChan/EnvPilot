find_file '*' .github/workflows
open ".github/workflows/main.yml"
apt-get update && apt-get install -y postgresql chromium libssl-dev build-essential
apt-get update && apt-get install -y postgresql chromium-browser libssl-dev build-essential
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash && export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && nvm install 21.7.3 && nvm use 21.7.3
apt-get update && apt-get install -y curl
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash && export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && nvm install 21.7.3 && nvm use 21.7.3
export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && nvm install 21.7.3 && nvm use 21.7.3
curl -fsSL https://get.pnpm.io/install.sh | sh -
export SHELL=/bin/bash && curl -fsSL https://get.pnpm.io/install.sh | sh -

