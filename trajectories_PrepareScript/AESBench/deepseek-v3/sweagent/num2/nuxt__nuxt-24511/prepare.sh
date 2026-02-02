find_file '.github/workflows/*.yml'
find_file .gitlab-ci.yml
find_file .circleci/config.yml
find_file Jenkinsfile
find_file azure-pipelines.yml
find_file requirements.txt
find_file setup.py
find_file pyproject.toml
find_file package.json
open "/testbed/package.json"
pnpm install
npm install -g pnpm
apt-get update
apt-get install -y pnpm
curl -fsSL https://get.pnpm.io/install.sh | sh -
apt-get install -y curl
curl -fsSL https://get.pnpm.io/install.sh | sh -
export SHELL=/bin/bash && curl -fsSL https://get.pnpm.io/install.sh | sh -

