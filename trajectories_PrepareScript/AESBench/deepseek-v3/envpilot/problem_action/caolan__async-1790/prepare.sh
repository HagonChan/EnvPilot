find_file '.github/workflows/*.yml'
find_file .gitlab-ci.yml
find_file .circleci/config.yml
find_file Jenkinsfile
find_file package.json
open "/testbed/package.json"
node --version && npm --version
apt update && apt install -y nodejs npm
node --version && npm --version
npm ci
npm test
