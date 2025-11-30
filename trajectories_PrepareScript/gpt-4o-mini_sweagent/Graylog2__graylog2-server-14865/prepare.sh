find_file '*.yml' .
open ".github/workflows/build.yml"
find_file '*requirements.txt' .
find_file setup.py .
find_file package.json .
open "/testbed/graylog2-web-interface/package.json"
find_file README.md .
open "/testbed/graylog2-web-interface/README.md"
node -v
yarn -v
apt update && apt install -y nodejs npm
npm install -g yarn
cd /testbed/graylog2-web-interface && yarn install
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
apt install -y curl
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && nvm install 16
cd /testbed/graylog2-web-interface && yarn install
yarn test
