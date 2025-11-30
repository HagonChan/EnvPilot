ls -la
open "azure-pipelines.yml"
open "tox.ini"
apt-get update && apt-get install -y language-pack-de language-pack-fr tzdata graphviz g++ pkg-config python3-configobj python3-numpy python3-ply python3-venv cython3 libwcs7 wcslib-dev libcfitsio-dev liberfa1 git python3-dev build-essential libssl-dev
python3.10 -m venv venv

source venv/bin/activate
pip install --upgrade tox codecov
pip install pytest
tox
search_file pass_env tox.ini
scroll_down
open "azure-pipelines.yml"
edit '[testenv]' '[testenv]
pass_env = CI, CIBW_MANYLINUX_X86_64_IMAGE, CIBW_MANYLINUX_I686_IMAGE, CIBW_ARCHS_LINUX, CIBW_ARCHS_MACOS'
open "tox.ini"
edit 'passenv = HOME WINDIR LC_ALL LC_CTYPE CC CI IS_CRON ARCH_ON_CI TEST_READ_HUGE_FILE' 'passenv = HOME,WINDIR,LC_ALL,LC_CTYPE,CC,CI,IS_CRON,ARCH_ON_CI,TEST_READ_HUGE_FILE'
tox
pytest -p no:warnings --astropy-header -m "not hypothesis" -k "not test_data_out_of_range and not test_wcsapi_extension" --pyargs astropy
pip install hypothesis
pytest -p no:warnings --astropy-header -m "not hypothesis" -k "not test_data_out_of_range and not test_wcsapi_extension" --pyargs astropy
pip install erfa
open "pyproject.toml"
pip install astropy
pytest -p no:warnings --astropy-header -m "not hypothesis" -k "not test_data_out_of_range and not test_wcsapi_extension" --pyargs astropy
pip install -e .
pip install --upgrade setuptools
pip install -e .
pip install setuptools==57.5.0
pip install -e .
find_file requirements.txt
find_file 'README*'
open "README.rst"
open "docs/install.rst"
pip install astropy[all]
pytest -p no:warnings --astropy-header -m "not hypothesis" -k "not test_data_out_of_range and not test_wcsapi_extension" --pyargs astropy
python setup.py build_ext --inplace
find_file 'setup*'
open "setup.py"
pip install astropy
git clone https://github.com/astropy/astropy.git && cd astropy && pip install .
cd astropy && pip install .
deactivate
rm -rf venv
python3.10 -m venv venv
exit
