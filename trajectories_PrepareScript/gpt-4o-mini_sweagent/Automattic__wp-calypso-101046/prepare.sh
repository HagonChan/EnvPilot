find_file '*.yml' .github/workflows
open "/testbed/.github/workflows/icfy-stats.yml"
find_file .nvmrc
open "/testbed/.nvmrc"
nvm install 22.9.0
apt update && apt install -y nodejs=22.9.0-1nodesource1
curl -fsSL https://deb.nodesource.com/setup_22.x | bash - && apt install -y nodejs
npm install --global yarn
curl -fsSL https://deb.nodesource.com/setup_22.x | bash - && apt install -y nodejs
apt install -y software-properties-common && add-apt-repository -y ppa:nodesource/ppa && apt update && apt install -y nodejs
apt install -y nodejs
apt install -y yarn
yarn install --inline-builds
yarn install
search_file test /testbed/.github/workflows/icfy-stats.yml
find_file README.md
open "/testbed/test/README.md"
jest
