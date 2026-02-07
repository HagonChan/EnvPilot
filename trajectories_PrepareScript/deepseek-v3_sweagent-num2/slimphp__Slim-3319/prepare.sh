find_file '.github/workflows/*.yml'
find_file '.github/workflows/*.yaml'
find_file .gitlab-ci.yml
find_file .circleci/config.yml
find_file azure-pipelines.yml
find_file Jenkinsfile
find_file requirements.txt
find_file setup.py
find_file pyproject.toml
find_file package.json
find_file Gemfile
find_file Cargo.toml
find_file README.md
open "/testbed/README.md"
find_file Makefile
find_file tox.ini
find_file environment.yml
composer --version
php --version
python --version
python3 --version
pip --version
pip3 --version
node --version
npm --version
ruby --version
cargo --version
apt-get update
apt-get install -y python3 python3-pip
python3 -m venv venv
apt-get install -y python3.10-venv
python3 -m venv venv
source venv/bin/activate
pip install -e .
pip install -r requirements.txt
ls
cat composer.json
composer install
apt-get install -y composer
composer install
apt-get install -y php8.1-xml
composer install
composer run test
composer run test -- --filter=Test
composer run test -- --filter=Test --stop-on-failure
composer run test -- --filter=Test --stop-on-failure --debug
composer run test -- --filter=Test --stop-on-failure --debug --verbose
composer run test -- --filter=Test --stop-on-failure --debug --verbose --no-coverage
open "/testbed/tests/Mocks/SlowPokeStream.php"

