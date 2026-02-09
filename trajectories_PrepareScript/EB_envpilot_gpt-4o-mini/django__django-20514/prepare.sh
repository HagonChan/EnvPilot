
find_file '*.yml'
open ".github/workflows/tests.yml"
find_file requirements/py3.txt
find_file requirements.txt
find_file '*' tests
find_file setup.py
find_file README.md
find_file Makefile
open "tests"
ls tests
find_file '*' tests/requirements
open "tests/requirements/py3.txt"
python3 -m venv venv
python --version
find_file '*' tests
find tests -type f -executable
create install_dependencies.sh
insert '#!/bin/bash

# Install dependencies from py3.txt
while IFS= read -r package; do
    pip install "$package"
done < tests/requirements/py3.txt' 0
chmod +x install_dependencies.sh
./install_dependencies.sh
find_file README.md tests
open "tests/gis_tests/data/geoip2/README.md"
apt list --installed | grep python
apt-get update && apt-get install -y python3 python3-pip
pip install -r tests/requirements/py3.txt
python3 tests/runtests.py -v2
python3 --version
open "tests/runtests.py"
goto 100
goto 20
pip show django
edit 'done < tests/requirements/py3.txt' 'echo "django" >> tests/requirements/py3.txt
done < tests/requirements/py3.txt' True
goto 804
pip install django
python3 tests/runtests.py -v2
search_file datetime tests/runtests.py
search_dir datetime tests
pip show django
find_file settings.py tests
open "tests/i18n/sampleproject/sampleproject/settings.py"
open "tests/flatpages_tests/settings.py"
open "tests/auth_tests/settings.py"
search_file def tests/runtests.py
goto 343
goto 343
goto 340
goto 400
goto 440

