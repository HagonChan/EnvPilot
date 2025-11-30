find_file '*.yml' .github/workflows
find_file .gitlab-ci.yml
find_file .circleci/config.yml
find_file azure-pipelines.yml
open "/testbed/azure-pipelines.yml"
find_file '*' requirements
open "/testbed/requirements/testing/travis_all.txt"
open "/testbed/requirements/testing/travis36.txt"
python -m pip install --upgrade pip
python3 --version
apt update
apt install python3 python3-pip python3-dev
apt install python3
which python python3
apt-get install python3
find_file '*.py' .
open "/testbed/lib/matplotlib/tests/test_basic.py"
create run_tests.py
insert 'import unittest
from lib.matplotlib.tests.test_basic import *

if __name__ == '"'"'__main__'"'"':
    unittest.main()' 0
python3 run_tests.py
