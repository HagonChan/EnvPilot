ls -la
ls -la .github/workflows
open ".github/workflows/upstream-dev-ci.yaml"
open "ci/requirements/py38.yml"
open "ci/install-upstream-wheels.sh"
conda --version
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O miniconda.sh && bash miniconda.sh -b -p $HOME/miniconda && export PATH=$HOME/miniconda/bin:$PATH
curl -o miniconda.sh https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh && bash miniconda.sh -b -p $HOME/miniconda && export PATH=$HOME/miniconda/bin:$PATH
apt-get update && apt-get install -y curl
curl -o miniconda.sh https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh && bash miniconda.sh -b -p $HOME/miniconda && export PATH=$HOME/miniconda/bin:$PATH
export PATH=$HOME/miniconda/bin:$PATH && conda --version
conda env create -f ci/requirements/py38.yml
conda install -y -n base -c conda-forge mamba
conda tos accept --override-channels --channel https://repo.anaconda.com/pkgs/main && conda tos accept --override-channels --channel https://repo.anaconda.com/pkgs/r
conda install -y -n base -c conda-forge mamba
mamba env create -f ci/requirements/py38.yml
conda env create -f ci/requirements/py38.yml
open "ci/requirements/py38.yml"
conda create -y -n xarray-tests python=3.8 pytest
conda activate xarray-tests && conda install -y -c conda-forge numpy pandas dask && pip install -r ci/requirements/py38.yml
eval "$(conda shell.bash hook)"
conda activate xarray-tests && conda install -y -c conda-forge numpy pandas dask && pip install -r ci/requirements/py38.yml
conda config --set ssl_verify false && conda install -y -c conda-forge numpy pandas dask && pip install -r ci/requirements/py38.yml
open "ci/requirements/py38.yml"
conda install -y -c conda-forge python=3.8 black boto3 bottleneck cartopy cdms2 cfgrib cftime coveralls dask distributed flake8 h5netcdf h5py=2 hdf5 hypothesis iris isort lxml matplotlib mypy=0.790 nc-time-axis netcdf4 numba numpy pandas pint pip pseudonetcdf pydap pytest pytest-cov pytest-env rasterio scipy seaborn setuptools sparse toolz zarr
conda install -y -c conda-forge python=3.8 numpy pandas dask pytest
conda install -y -c conda-forge black flake8 isort mypy=0.790 pytest-cov pytest-env
conda install -y -c conda-forge numba scipy seaborn sparse toolz zarr
conda install -y -c conda-forge h5netcdf h5py=2 hdf5 netcdf4 pseudonetcdf pydap

