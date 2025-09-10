ls -la
ls -la .github/workflows
open ".github/workflows/upstream-dev-ci.yaml"
open "ci/requirements/py38.yml"
open "ci/install-upstream-wheels.sh"
conda --version
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O miniconda.sh && bash miniconda.sh -b -p $HOME/miniconda && export PATH="$HOME/miniconda/bin:$PATH" && conda init bash
curl -o miniconda.sh https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh && bash miniconda.sh -b -p $HOME/miniconda && export PATH="$HOME/miniconda/bin:$PATH" && conda init bash
apt --version
apt update && apt install -y curl
curl -o miniconda.sh https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh && bash miniconda.sh -b -p $HOME/miniconda && export PATH="$HOME/miniconda/bin:$PATH" && conda init bash
export PATH="$HOME/miniconda/bin:$PATH" && conda init bash
conda env create -f ci/requirements/py38.yml
open "ci/requirements/py38.yml"
conda update -n base -c defaults conda --yes
conda env create -f ci/requirements/py38.yml
ls -la requirements.txt
open "requirements.txt"
conda create -n xarray-tests python=3.8 --yes
python3.8 --version
apt install -y python3.8 python3.8-venv
apt install -y software-properties-common && add-apt-repository -y ppa:deadsnakes/ppa && apt update
apt install -y python3.8 python3.8-venv
python3.8 -m venv venv && source venv/bin/activate
pip install -r requirements.txt
python -m pytest
pip install pytest
python -m pytest
pip show pandas
open "ci/requirements/py38.yml"
cat ci/requirements/py38.yml
pip install pandas==1.5.3
python -m pytest
pip show numpy dask xarray
pip install dask xarray
python -m pytest
pip install dask[diagnostics]
python -m pytest
pip show pandas numpy dask xarray
cat ci/requirements/py38.yml
pip install numpy==1.21.0
python -m pytest
pip install xarray==0.20.2
python -m pytest
pip install pytest==6.2.5
python -m pytest
pip install pandas==1.3.0
python -m pytest
pip install dask==2021.10.0

