ls -la
ls -la .github/workflows
open ".github/workflows/upstream-dev-ci.yaml"
open "ci/requirements/py38.yml"
open "setup.py"
apt-get update && apt-get install -y python3 python3-pip
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O miniconda.sh && bash miniconda.sh -b -p $HOME/miniconda && export PATH=$HOME/miniconda/bin:$PATH
apt-get install -y wget
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O miniconda.sh && bash miniconda.sh -b -p $HOME/miniconda && export PATH=$HOME/miniconda/bin:$PATH
export PATH=$HOME/miniconda/bin:$PATH && conda --version
conda env create -f ci/requirements/py38.yml
conda install -y -c conda-forge mamba
conda tos accept --override-channels --channel https://repo.anaconda.com/pkgs/main && conda tos accept --override-channels --channel https://repo.anaconda.com/pkgs/r
conda install -y -c conda-forge mamba
mamba env create -f ci/requirements/py38.yml
open "ci/requirements/py38.yml"
conda env create -f ci/requirements/py38.yml
conda create -y -n xarray-tests python=3.8
conda activate xarray-tests && pip install -r ci/requirements/py38.yml

