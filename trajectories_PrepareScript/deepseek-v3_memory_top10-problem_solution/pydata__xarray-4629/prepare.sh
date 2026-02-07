ls -la
open ".github/workflows"
ls -la .github/workflows
open ".github/workflows/upstream-dev-ci.yaml"
open "ci/requirements/py38.yml"
mamba env update -f ci/requirements/py38.yml
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O miniconda.sh
curl -o miniconda.sh https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
apt-get update
apt-get install -y wget
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O miniconda.sh
bash miniconda.sh -b -p $HOME/miniconda
export PATH=$HOME/miniconda/bin:$PATH
conda init bash

