
find_file '*.yml'
open "/testbed/.travis.yml"
find_file package.json
open "/testbed/package.json"
npm install
node -v

apt update
apt install -y nodejs npm

