
find_file '*.yml'
open "/testbed/.github/workflows/nightly.yml"
find_file requirements.txt
open "/testbed/requirements.txt"
find_file requirements-common.txt
open "/testbed/requirements-common.txt"
apt update && pip install -r requirements.txt && pip install -r requirements-common.txt && pip uninstall -y keras keras-nightly && pip install -e .
apt install python3-pip
apt-get install -y python3-pip
pip install -r requirements.txt && pip install -r requirements-common.txt && pip uninstall -y keras keras-nightly && pip install -e .
search_file jax /testbed/requirements.txt
search_file jax /testbed/requirements-common.txt
edit 'jax[cpu]==0.8.1' 'jax[cpu]' False

edit 'jax[cpu]==0.8.1' 'jax[cpu]' False

