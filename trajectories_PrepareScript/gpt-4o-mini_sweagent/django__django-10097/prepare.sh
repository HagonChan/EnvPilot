find_file '*.yml' .
find_file '*.yaml' .
find_file '*.gitlab-ci.yml' .
find_file Jenkinsfile .
find_file azure-pipelines.yml .
find_file circleci/config.yml .
find_file requirements.txt .
find_file setup.py .
find_file pyproject.toml .
find_file package.json .
find_file Gemfile .
open "/testbed/setup.py"
open "/testbed/package.json"
open "/testbed/tests/admin_scripts/custom_templates/project_template/additional_dir/requirements.txt"
pip install pytz
apt update
apt install python3 python3-pip
apt install python3
python3 --version
find_file README.md .
find_file README.rst .
open "/testbed/README.rst"
open "/testbed/tests/README.rst"
python3 -m venv venv
find_file '*.sh' .
open "/testbed/scripts/rpm-install.sh"
