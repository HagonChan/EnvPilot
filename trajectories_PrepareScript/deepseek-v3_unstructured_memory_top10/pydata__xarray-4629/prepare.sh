ls
open "azure-pipelines.yml"
open "ci/azure/unit-tests.yml"
open "ci/azure/install.yml"
open "ci/requirements/py38.yml"
mamba env update -f ci/requirements/py38.yml
conda env update -f ci/requirements/py38.yml
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O miniconda.sh && bash miniconda.sh -b -p $HOME/miniconda && export PATH="$HOME/miniconda/bin:$PATH" && conda init
curl -o miniconda.sh https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh && bash miniconda.sh -b -p $HOME/miniconda && export PATH="$HOME/miniconda/bin:$PATH" && conda init
apt-get update && apt-get install -y curl
curl -o miniconda.sh https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh && bash miniconda.sh -b -p $HOME/miniconda && export PATH="$HOME/miniconda/bin:$PATH" && conda init
export PATH="$HOME/miniconda/bin:$PATH" && conda init && conda env update -f ci/requirements/py38.yml
export PATH="$HOME/miniconda/bin:$PATH" && conda init
conda env update -f ci/requirements/py38.yml
conda env create -f ci/requirements/py38.yml
ls
open "requirements.txt"
pip install -e .
python -m pytest
pip install pytest
python -m pytest
pip install numpy==1.26.4
apt-get install -y build-essential
pip install numpy==1.26.4
python -m pytest
pip show pandas
pip install pandas==1.5.3
pip install pandas==2.0.3
apt-get install -y python3.10 python3.10-venv python3.10-dev
python3.10 -m venv venv
source venv/bin/activate
pip install -e .
pip install pytest
python -m pytest
pip install numpy==1.26.4
python -m pytest
pip install pandas==1.5.3
python -m pytest
