find_file '*.yml' .
open ".circleci/config.yml"
search_file test .circleci/config.yml
apt update
sudo corepack enable
corepack enable
yarn install --immutable
node -v
curl -O https://nodejs.org/dist/v20.11.0/node-v20.11.0.tar.gz
wget https://nodejs.org/dist/v20.11.0/node-v20.11.0.tar.gz
find_file '*.sh'
find_file 'README*'
open "/testbed/README.md"
wget https://nodejs.org/dist/v18.17.0/node-v18.17.0.tar.gz
find_file '*.*'
open "/testbed/package.json"
ls /testbed/scripts
npm run test

exit_forfeit

exit_forfeit

exit_forfeit
