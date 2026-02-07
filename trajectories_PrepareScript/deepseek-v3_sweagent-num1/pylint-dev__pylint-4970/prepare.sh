ls -la
ls -la .github/workflows
open ".github/workflows/ci.yaml"
open "requirements_test.txt"
open "setup.py"
open "setup.cfg"
open "README.rst"
python -m venv venv
ls /usr/bin/python*
apt-get update && apt-get install -y python3.6 python3.6-venv
apt-get install -y python3.8 python3.8-venv
apt-cache policy python3
apt-get install -y python3 python3-venv
python3 -m venv venv
source venv/bin/activate && python setup.py install
source venv/bin/activate && pip install --upgrade pip && python setup.py install
source venv/bin/activate && pip install --trusted-host pypi.org --trusted-host files.pythonhosted.org lazy-object-proxy
source venv/bin/activate && python setup.py install
source venv/bin/activate && pip install -r requirements_test.txt
source venv/bin/activate && pytest
