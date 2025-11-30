find_file '*.yml' .github/workflows
find_file .gitlab-ci.yml
find_file circleci/config.yml
find_file azure-pipelines.yml
find_file Jenkinsfile
find_file setup.py
open "setup.py"
search_file install_requires setup.py
apt-get update && apt-get install -y build-essential
python3 --version
apt-get install -y python3
python3 -m pip --version
apt-get install -y python3-pip
python3 -m pip install mpmath
python3 -m pip show pytest
python3 -m pip install pytest
pytest
search_file Mapping bin/test_import.py
search_file sympy setup.py
python3 -m pip install sympy==1.10.1
pytest
python3 -m pip install sympy==1.9
pytest
python3 -m pip install sympy==1.8
pytest
python3 -m pip install sympy==1.7
pytest
python3 -m pip install sympy==1.6
pytest
python3 -m pip install sympy==1.5
pytest
python3 -m pip install sympy==1.4
pytest
python3 -m pip install sympy==1.3
pytest
python3 -m pip install sympy==1.2
pytest
python3 -m pip install sympy==1.1
pytest
python3 -m pip install sympy==1.0
pytest
python3 -m pip install sympy==0.9
python3 -m pip install sympy==1.11
pytest
python3 -m pip install sympy==1.12
pytest
python3 -m pip install sympy==1.13
pytest
python3 -m pip install sympy==1.14

