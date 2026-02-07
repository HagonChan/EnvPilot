ls -la
ls -la .github/workflows
open ".github/workflows/upstream-dev-ci.yaml"
open "ci/requirements/py38.yml"
open "setup.py"
open "README.rst"
conda --version
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O miniconda.sh && bash miniconda.sh -b -p $HOME/miniconda && export PATH=$HOME/miniconda/bin:$PATH
curl -o miniconda.sh https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh && bash miniconda.sh -b -p $HOME/miniconda && export PATH=$HOME/miniconda/bin:$PATH
apt-get update && apt-get install -y curl
curl -o miniconda.sh https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh && bash miniconda.sh -b -p $HOME/miniconda && export PATH=$HOME/miniconda/bin:$PATH
conda --version
conda env create -f ci/requirements/py38.yml
conda create -n test_env python=3.8 -y
conda tos accept --override-channels --channel https://repo.anaconda.com/pkgs/main && conda tos accept --override-channels --channel https://repo.anaconda.com/pkgs/r
conda create -n test_env python=3.8 -y
conda activate test_env && conda install -y numpy pandas pytest
conda init bash

