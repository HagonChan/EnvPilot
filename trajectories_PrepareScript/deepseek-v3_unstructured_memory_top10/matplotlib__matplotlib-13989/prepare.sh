ls -la
ls -la .github/workflows
ls -la .circleci
open ".circleci/config.yml"
open "pytest.ini"
ls -la requirements
ls -la requirements/testing
open "requirements/testing/travis_all.txt"
python3 -m pip install -r requirements/testing/travis_all.txt
ls /usr/bin/python*
apt-get update && apt-get install -y python3 python3-pip
python3 -m pip install -r requirements/testing/travis_all.txt
python3 -m pytest --version
python3 -m pytest lib
python3 -m pip install kiwisolver
python3 -m pytest lib
ls -la
python3 setup.py install
apt-get install -y libfreetype6-dev pkg-config
python3 setup.py install
python3 -c "import matplotlib; print(matplotlib.__version__)"
python3 -m pytest lib
python3 -m pip install --force-reinstall --no-deps -e .
python3 -c "import matplotlib.ft2font; print('ft2font module is available')"
python3 -m pytest lib
