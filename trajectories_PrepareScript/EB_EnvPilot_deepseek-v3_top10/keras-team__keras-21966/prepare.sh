find_file '.github/workflows/*.yml'
find_file .gitlab-ci.yml
find_file .circleci/config.yml
find_file Jenkinsfile
find_file requirements.txt
open "/testbed/requirements.txt"
open "/testbed/requirements-common.txt"
ls -a
python3 -m venv venv
ls /usr/bin/python*
apt-get update && apt-get install -y python3.10 python3.10-venv build-essential
python3.10 -m venv venv
source venv/bin/activate && pip install -r requirements.txt
pip install jax[cpu] --upgrade
edit 'jax[cpu]==0.8.1' 'jax[cpu]==0.6.2' True
open "/testbed/requirements.txt"
edit 'jax[cpu]==0.8.1' 'jax[cpu]==0.6.2' True
pip install -r requirements.txt
pip install torch --upgrade
edit torch==2.9.1+cpu torch==2.10.0 True
pip install -r requirements.txt
pip install flax --upgrade
edit flax==0.12.2 flax==0.10.7 True
pip install -r requirements.txt
pytest
search_file tf_keras requirements.txt
pip install tf_keras
pytest
pip install pydot
pytest integration_tests/model_visualization_test.py
apt-get install -y graphviz
pytest integration_tests/model_visualization_test.py
