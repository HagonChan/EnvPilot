ls -la
ls -la .github/workflows
open ".github/workflows/upstream-dev-ci.yaml"
open "ci/requirements/py38.yml"
mamba env update -f ci/requirements/py38.yml
conda install -n base -c conda-forge mamba -y
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O miniconda.sh && bash miniconda.sh -b -p $HOME/miniconda && export PATH="$HOME/miniconda/bin:$PATH" && conda init
curl -o miniconda.sh https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh && bash miniconda.sh -b -p $HOME/miniconda && export PATH="$HOME/miniconda/bin:$PATH" && conda init
apt-get update && apt-get install -y curl
curl -o miniconda.sh https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh && bash miniconda.sh -b -p $HOME/miniconda && export PATH="$HOME/miniconda/bin:$PATH" && conda init
export PATH="$HOME/miniconda/bin:$PATH" && conda --version
conda install -n base -c conda-forge mamba -y
mamba env update -f ci/requirements/py38.yml
mamba create -n xarray-tests -y
mamba env update -n xarray-tests -f ci/requirements/py38.yml
conda env update -n xarray-tests -f ci/requirements/py38.yml
open "ci/requirements/py38.yml"
conda activate xarray-tests && conda install -y python=3.8 black boto3 bottleneck cartopy cdms2 cfgrib cftime coveralls dask distributed flake8 h5netcdf h5py=2 hdf5 hypothesis iris isort lxml matplotlib mypy=0.790 nc-time-axis netcdf4 numba numpy pandas pint pip pseudonetcdf pydap pytest pytest-cov pytest-env rasterio scipy seaborn setuptools sparse toolz zarr && pip install numbagg
eval "$(conda shell.bash hook)" && conda activate xarray-tests && conda install -y python=3.8 black boto3 bottleneck cartopy cdms2 cfgrib cftime coveralls dask distributed flake8 h5netcdf h5py=2 hdf5 hypothesis iris isort lxml matplotlib mypy=0.790 nc-time-axis netcdf4 numba numpy pandas pint pip pseudonetcdf pydap pytest pytest-cov pytest-env rasterio scipy seaborn setuptools sparse toolz zarr && pip install numbagg
eval "$(conda shell.bash hook)" && conda activate xarray-tests && conda install -y -c conda-forge python=3.9 black boto3 bottleneck cartopy cdms2 cfgrib cftime coveralls dask distributed flake8 h5netcdf h5py=2 hdf5 hypothesis iris isort lxml matplotlib mypy=0.790 nc-time-axis netcdf4 numba numpy pandas pint pip pseudonetcdf pydap pytest pytest-cov pytest-env rasterio scipy seaborn setuptools sparse toolz zarr && pip install numbagg
eval "$(conda shell.bash hook)" && conda activate xarray-tests && conda config --set ssl_verify false && conda install -y -c conda-forge python=3.9 black boto3 bottleneck cartopy cdms2 cfgrib cftime coveralls dask distributed flake8 h5netcdf h5py=2 hdf5 hypothesis iris isort lxml matplotlib mypy=0.790 nc-time-axis netcdf4 numba numpy pandas pint pip pseudonetcdf pydap pytest pytest-cov pytest-env rasterio scipy seaborn setuptools sparse toolz zarr && pip install numbagg
apt-get update && apt-get install -y python3.9 python3-pip
pip install pytest pytest-cov numpy pandas dask
python -m pytest -rf
pip install "numpy<2.0" --force-reinstall
python -m pytest -rf
pip install "pandas<2.0" --force-reinstall
apt-get update && apt-get install -y python3.8 python3.8-venv python3.8-dev
apt-get update && apt-get install -y software-properties-common && add-apt-repository -y ppa:deadsnakes/ppa && apt-get update && apt-get install -y python3.8 python3.8-venv python3.8-dev
python3.8 -m venv venv && source venv/bin/activate
python -m ensurepip --upgrade && python -m pip install --upgrade pip
pip install numpy pandas dask pytest pytest-cov
python -m pytest -rf
pip install "pandas<2.0" --force-reinstall
python -m pytest -rf
pip install "dask[diagnostics]"
python -m pytest -rf
