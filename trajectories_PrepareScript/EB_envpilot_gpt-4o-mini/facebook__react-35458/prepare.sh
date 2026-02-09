
find . -name '*.yml' -o -name '*.yaml' -o -name '*.gitlab-ci.yml' -o -name 'Jenkinsfile' -o -name 'azure-pipelines.yml' -o -name 'circleci/config.yml'
open ".github/workflows/runtime_build_and_test.yml"
goto 100
goto 200
find . -name '.nvmrc'
open ".nvmrc"
nvm install 20.19.0
apt update
apt install -y nodejs=20.19.0-1nodesource1
curl -fsSL https://deb.nodesource.com/setup_20.x | bash -
apt install -y curl
curl -fsSL https://deb.nodesource.com/setup_20.x | bash -
apt install -y nodejs
npm install -g yarn
yarn install
yarn test --ci
