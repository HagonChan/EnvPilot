find_file '.github/workflows/*.yml'
find_file .gitlab-ci.yml
find_file .circleci/config.yml
find_file Jenkinsfile
find_file azure-pipelines.yml
find_file requirements.txt
open "/testbed/utils/req-res-validator/requirements.txt"
find_file setup.py
find_file pyproject.toml
find_file README.md
open "/testbed/README.md"
make
sudo apt-get update
apt-get update
apt-get install -y build-essential
make
make test
apt-get install -y tcl
make test
