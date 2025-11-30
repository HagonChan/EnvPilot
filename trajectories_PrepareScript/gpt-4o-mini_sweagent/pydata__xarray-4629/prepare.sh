ls -la
open "azure-pipelines.yml"
ls -la ci/azure
open "ci/azure/install.yml"
ls -la ci/requirements
open "ci/requirements/py38.yml"
conda update -y conda
python3 -m venv xarray-tests
ls -la /usr/bin | grep python
find . -name "README*"
open "README.rst"
open "properties/README.md"
open "doc/README.rst"
open "doc/gallery/README.txt"
find . -name "*.sh" -o -name "*.install"
open "ci/install-upstream-wheels.sh"
grep -r "install" .
find doc -name "installing.rst"
open "doc/installing.rst"
grep -r "python" .
ls -la /usr/bin
apt update && apt install -y python3 python3-pip
bash ci/install-upstream-wheels.sh
pip install numpy scipy pandas matplotlib numbagg
pytest
pip install pytest
pytest
pip uninstall -y numpy && pip install numpy==1.24.3
pip install numpy==1.21.6
find . -name "*.whl"
pip install numpy==1.21.6 --trusted-host pypi.org --trusted-host files.pythonhosted.org
apt install -y python3-numpy
pytest
pip uninstall -y numpy && pip install numpy==1.22.4
pip uninstall -y pandas && pip install pandas==1.3.5
pytest
apt install -y python3-pandas
pytest

open "setup.py"
pip uninstall -y numpy pandas && pip install numpy==1.21.6 pandas==1.3.5
pip uninstall -y numpy scipy pandas matplotlib numba && pip install numpy==1.23.5 scipy==1.15.3 pandas==1.3.5 matplotlib==3.10.7 numba==0.62.1
pytest
