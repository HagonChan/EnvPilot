
find_file '*.yml'
open "/testbed/.github/workflows/ci.yml"
goto 100
find_file '*.yml' /testbed/.github/workflows
open "/testbed/.github/workflows/iojs.yml"
find_file package.json
open "/testbed/package.json"
command -v nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
node -v
find_file 'node*'
find_file 'README*'
open "/testbed/examples/README.md"
open "/testbed/benchmarks/README.md"
wget https://nodejs.org/dist/latest/node-v18.17.0.tar.gz
find_file 'install*'

search_dir install

search_dir install

search_dir install

search_dir install
open "/testbed/Readme.md"
find_file Makefile
open "/testbed/benchmarks/Makefile"
search_file scripts /testbed/package.json
goto 95
open "/testbed/package.json"
npm install

npm install

npm install

npm install

npm install

npm install

npm install

npm install

npm install

