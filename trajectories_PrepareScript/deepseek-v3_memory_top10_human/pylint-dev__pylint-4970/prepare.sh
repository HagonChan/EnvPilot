ls -la
ls -la .github/workflows
open ".github/workflows/ci.yaml"
open "requirements_test.txt"
open "requirements_test_min.txt"
apt-get update && apt-get install -y python3.6 python3-pip
apt-get update && apt-get install -y --fix-missing python3.6 python3-pip
python3 -m venv venv && . venv/bin/activate
apt-get install -y python3.10-venv
python3 -m venv venv && . venv/bin/activate
pip install -U -r requirements_test.txt
pip install --default-timeout=100 -U -r requirements_test.txt
pip install --trusted-host pypi.org --trusted-host files.pythonhosted.org --default-timeout=100 -U -r requirements_test.txt
pip install pytest pytest-benchmark
apt-get install -y python3-pytest
pytest --version
python3 -m pip install pytest
python3 -m pytest
deactivate && python3 -m pytest
apt-get install -y python3-pylint python3-platformdirs
pip install --trusted-host pypi.org --trusted-host files.pythonhosted.org pylint platformdirs
python3 -m pytest
pip uninstall -y pylint astroid
pip install --trusted-host pypi.org --trusted-host files.pythonhosted.org pylint==2.17.7 astroid==2.15.8
python3 -m pytest
