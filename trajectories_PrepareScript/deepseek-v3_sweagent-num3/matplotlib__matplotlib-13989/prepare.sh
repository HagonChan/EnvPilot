ls -la
open "INSTALL.rst"
ls -la .github/workflows
ls -la .circleci
open ".circleci/config.yml"
ls -la requirements
ls -la requirements/testing
open "requirements/testing/travis_all.txt"
open "setup.py"
open "tox.ini"
pip install -r requirements/testing/travis_all.txt
apt-get update && apt-get install -y python3-pip
pip install -r requirements/testing/travis_all.txt
python -mpip install --user -ve .
python3 -mpip install --user -ve .
apt-get install -y libfreetype6-dev
python3 -mpip install --user -ve .
dpkg -L libfreetype6-dev | grep ft2build.h
apt-get install --reinstall -y libfreetype6-dev
dpkg -L libfreetype6-dev | grep ft2build.h
find /usr -name ft2build.h
export CPATH=/usr/include/freetype2:$CPATH && python3 -mpip install --user -ve .
python3 -m pytest
