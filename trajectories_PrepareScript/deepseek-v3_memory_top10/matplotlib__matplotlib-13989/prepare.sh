ls -la
ls -la .github/workflows
ls -la .circleci
open ".circleci/config.yml"
open "INSTALL.rst"
open "README.rst"
ls -la
ls -la src
apt-get update && apt-get install -y gcc g++ cmake make libssl-dev libyaml-dev flex bison
ls -la CMakeLists.txt
ls -la Makefile
open "setup.py"
python setup.py build
apt-get install -y python3 python3-dev python3-pip
python3 setup.py build
apt-get install -y libfreetype6-dev
python3 setup.py build
find /usr -name ft2build.h
export CPPFLAGS="-I/usr/include/freetype2" && python3 setup.py build
python3 setup.py install
pip3 install pytest
pytest
pip3 install --force-reinstall -e .
pytest
