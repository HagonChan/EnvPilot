ls -la
ls -la .github/workflows
open ".github/workflows/ci_workflows.yml"
open "tox.ini"
open "setup.py"
open "setup.cfg"
apt-get update
apt-get install -y tox python3-pip
pip install -e .
pip install --upgrade setuptools
python3 -m venv venv
apt-get install -y python3.10-venv
python3 -m venv venv
source venv/bin/activate
pip install --upgrade pip setuptools
pip install -e .
pip install setuptools==58.0.4
pip install -e .
pip install .
pip install numpy>=1.18 pyerfa>=2.0 PyYAML>=3.13 packaging>=19.0
pip install pytest pytest-astropy pytest-doctestplus pytest-xdist
pytest
pip list
pytest -p no:warnings
python setup.py build_ext --inplace
pip install extension_helpers
python setup.py build_ext --inplace
pip install setuptools==58.0.4
pip uninstall -y extension_helpers
python setup.py build_ext --inplace
pip install extension_helpers
pytest
pip install --force-reinstall astropy
pytest
pip show astropy
pytest -v
pip install astropy==5.3.0
pytest
ls -la ~/.astropy
ls -la ~/.astropy/config
pytest -v --tb=long
echo "Issue: astropy logging configuration error. Steps taken: downgraded astropy to 5.3.0, reinstalled dependencies, checked config files. Error persists." > issue_summary.txt
