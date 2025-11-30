ls -la
open "azure-pipelines.yml"
open "ci/azure/install.yml"
open "ci/requirements/py38.yml"
apt-get update
python3.8 --version
apt-get install -y python3.8 python3.8-venv python3.8-dev
apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev git
git clone https://github.com/pyenv/pyenv.git ~/.pyenv && echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc && echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc && export PYENV_ROOT="$HOME/.pyenv" && export PATH="$PYENV_ROOT/bin:$PATH"
~/.pyenv/bin/pyenv install 3.8.0
~/.pyenv/bin/pyenv global 3.8.0
conda install mamba -n base -c conda-forge
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh && bash Miniconda3-latest-Linux-x86_64.sh -b -p $HOME/miniconda
source ~/miniconda/bin/activate
mamba env create -f ci/requirements/py38.yml
conda install mamba -n base -c conda-forge
conda env create -f ci/requirements/py38.yml
conda create -n py38 python=3.8 numpy pandas pytest
python3.8 -m venv venv
pyenv virtualenv 3.8.0 venv
export PATH="$HOME/.pyenv/bin:$PATH" && eval "$(pyenv init --path)" && eval "$(pyenv init -)" && eval "$(pyenv virtualenv-init -)" && python -m venv venv
python3 -m venv venv
ls /usr/bin/python*
python3.10 -m venv venv
apt-get install -y python3.10-venv
python3.10 -m venv venv
/usr/bin/python3.10 -m venv venv
source venv/bin/activate && pip install -r ci/requirements/py38.yml
open "ci/requirements/py38.yml"
echo -e "black\nboto3\nbottleneck\ncartopy\ncdms2\ncfgrib\ncftime\ncoveralls\ndask\ndistributed\nflake8\nh5netcdf\nh5py==2\nhdf5\nhypothesis\niris\nisort\nlxml\nmatplotlib\nmypy==0.790\nnc-time-axis\nnetcdf4\nnumba\nnumpy\npandas\npint\npseudonetcdf\npydap\npytest\npytest-cov\npytest-env\nrasterio\nscipy\nseaborn\nsetuptools\nsparse\ntoolz\nzarr\nnumbagg" > requirements.txt
source venv/bin/activate && pip install -r requirements.txt
grep -v cdms2 requirements.txt > requirements_no_cdms2.txt
pip install -r requirements_no_cdms2.txt
grep -v 'h5py==2' requirements_no_cdms2.txt > requirements_final.txt
pip install -r requirements_final.txt
grep -v 'hdf5' requirements_final.txt > requirements_final_no_hdf5.txt
pip install -r requirements_final_no_hdf5.txt
apt-get install -y python3-dev
pip install -r requirements_final_no_hdf5.txt
pytest --no-header -rA --tb=no -p no:cacheprovider
sed -i 's/numpy/numpy<2.0/' requirements_final_no_hdf5.txt
pip install -r requirements_final_no_hdf5.txt
pytest --no-header -rA --tb=no -p no:cacheprovider
pytest --no-header -rA --tb=short
pip show iris
pip uninstall -y iris
pip install iris
pytest --no-header -rA --tb=no -p no:cacheprovider
pytest --no-header -rA --tb=short

