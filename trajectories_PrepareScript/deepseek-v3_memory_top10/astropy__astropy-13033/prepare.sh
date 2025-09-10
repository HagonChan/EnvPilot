ls -la
open "azure-pipelines.yml"
open "tox.ini"
apt-get update && apt-get install -y language-pack-de tzdata language-pack-fr graphviz git g++ pkg-config python3 python3-configobj python3-numpy python3-ply python3-venv cython3 libwcs7 wcslib-dev libcfitsio-dev liberfa1
python3.10 -m venv venv
source venv/bin/activate && pip install --upgrade tox
tox -e py310-test
edit 'passenv = HOME WINDIR LC_ALL LC_CTYPE CC CI IS_CRON ARCH_ON_CI TEST_READ_HUGE_FILE' 'passenv = HOME,WINDIR,LC_ALL,LC_CTYPE,CC,CI,IS_CRON,ARCH_ON_CI,TEST_READ_HUGE_FILE' True
tox -e py310-test
pip install --upgrade setuptools
tox -e py310-test
pip install setuptools==58.0.0
tox -e py310-test
pip install numpy matplotlib scipy
pytest -p no:warnings --astropy-header -m "not hypothesis" -k "not test_data_out_of_range and not test_wcsapi_extension" --pyargs astropy
pip install pytest
pytest -p no:warnings --astropy-header -m "not hypothesis" -k "not test_data_out_of_range and not test_wcsapi_extension" --pyargs astropy
pip install hypothesis
pytest -p no:warnings --astropy-header -m "not hypothesis" -k "not test_data_out_of_range and not test_wcsapi_extension" --pyargs astropy
pip install erfa
git clone https://github.com/astropy/astropy.git
cd astropy && pip install -e .
