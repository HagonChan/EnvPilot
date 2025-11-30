
ls -R
open "build_tools/travis/install.sh"
apt-get update && apt-get install -y libblas-dev liblapack-dev python3-dev
python3 -m venv .venv && source .venv/bin/activate
apt-get install -y python3.10-venv
python3 -m venv .venv && source .venv/bin/activate
.venv/bin/pip install pytest pytest-cov cython
.venv/bin/pytest
.venv/bin/pip install numpy
.venv/bin/pip install numpy==1.21.6
.venv/bin/pytest
.venv/bin/pip install -U scikit-learn
.venv/bin/pytest
open "sklearn/setup.py"
.venv/bin/pip install cython
.venv/bin/pip install --force-reinstall -U scikit-learn
.venv/bin/pytest
ls -l sklearn/__check_build
.venv/bin/pip uninstall -y scikit-learn && .venv/bin/pip install -U scikit-learn
.venv/bin/pytest
ls -l sklearn/__check_build
.venv/bin/pip uninstall -y scikit-learn && .venv/bin/pip install -U scikit-learn
.venv/bin/pytest
ls -l sklearn/__check_build
.venv/bin/pip uninstall -y scikit-learn && .venv/bin/pip install -U scikit-learn
.venv/bin/pytest
ls -l sklearn/__check_build
.venv/bin/pip uninstall -y scikit-learn && .venv/bin/pip install -U scikit-learn
.venv/bin/pytest
ls -l sklearn/__check_build
.venv/bin/pip uninstall -y scikit-learn && .venv/bin/pip install -U scikit-learn
.venv/bin/pytest
ls -l sklearn/__check_build
.venv/bin/pip uninstall -y scikit-learn && .venv/bin/pip install -U scikit-learn
.venv/bin/pytest
ls -l sklearn/__check_build
.venv/bin/pip uninstall -y scikit-learn && .venv/bin/pip install -U scikit-learn
.venv/bin/pytest
ls -l sklearn/__check_build
.venv/bin/pip uninstall -y scikit-learn && .venv/bin/pip install -U scikit-learn
.venv/bin/pytest
ls -l sklearn/__check_build
.venv/bin/pip uninstall -y scikit-learn && .venv/bin/pip install -U scikit-learn
.venv/bin/pytest
ls -l sklearn/__check_build
.venv/bin/pip uninstall -y scikit-learn && .venv/bin/pip install -U scikit-learn
.venv/bin/pytest
ls -l sklearn/__check_build

