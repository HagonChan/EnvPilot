ls -la
ls -la .github/workflows/
open ".github/workflows/linux.yml"
ls -la requirements/
open "requirements/build_requirements.txt"
open "requirements/test_requirements.txt"
apt-get update && apt-get install -y gcc g++ make python3-dev libblas-dev liblapack-dev
pip install uv
apt-get install -y python3-pip
pip install uv
uv pip install -r requirements/build_requirements.txt -r requirements/test_requirements.txt
uv pip install --system -r requirements/build_requirements.txt -r requirements/test_requirements.txt
pytest --version && hypothesis --version
pytest
ls -la
open "pytest.ini"
pytest numpy/core/tests
ls -la numpy
pytest numpy/tests
open "INSTALL.rst"
pip install -e . --no-build-isolation
git submodule update --init
pip install -e . --no-build-isolation
apt-get update && apt-get install -y python3.12 python3.12-dev python3.12-venv
apt-get install -y software-properties-common && add-apt-repository -y ppa:deadsnakes/ppa && apt-get update && apt-get install -y python3.12 python3.12-dev python3.12-venv
python3.12 --version
python3.12 -m pip install -e . --no-build-isolation
apt-get install -y python3-distutils
python3.12 -m ensurepip --upgrade
python3.12 -m pip install setuptools
python3.12 -m venv venv
source venv/bin/activate && python -m pip install -e . --no-build-isolation
source venv/bin/activate && python -m pip install mesonpy
source venv/bin/activate && python -m pip install meson-python
source venv/bin/activate && python -m pip install -e . --no-build-isolation
source venv/bin/activate && pytest
source venv/bin/activate && pytest numpy/tests/test_*.py
open "numpy/__init__.py"
cat numpy/__init__.py
source venv/bin/activate && spin --help
source venv/bin/activate && spin test
source venv/bin/activate && PYTHON=python3.12 spin test
source venv/bin/activate && python --version
source venv/bin/activate && spin test
source venv/bin/activate && pytest
source venv/bin/activate && python -m pip install -e . --no-build-isolation
source venv/bin/activate && echo $PYTHONPATH && pytest
source venv/bin/activate && python -m pip install --upgrade pytest
source venv/bin/activate && python -m pytest

