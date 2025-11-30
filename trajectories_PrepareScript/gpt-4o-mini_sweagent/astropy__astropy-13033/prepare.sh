find_file '*.yml' .
open ".github/workflows/ci_workflows.yml"
find_file tox.ini .
open "tox.ini"

scroll_down
python3 -m venv venv
python --version
apt update
apt install -y python3 python3-venv python3-pip
python3 -m venv venv
source venv/bin/activate
search_file requires tox.ini
venv/bin/pip install pytest
venv/bin/pytest
venv/bin/pip install setuptools_scm
venv/bin/pytest
venv/bin/pip install erfa
find_file requirements.txt .
find_file README.md .
open "/testbed/cextern/expat/README.md"
find_file setup.py .
open "setup.py"
find_file setup.cfg .
open "setup.cfg"
venv/bin/pip install numpy pyerfa PyYAML packaging pytest-astropy
venv/bin/pytest
open "conftest.py"
venv/bin/pip show pytest astropy
venv/bin/pip install astropy
venv/bin/pytest
venv/bin/pip show astropy
venv/bin/pip install astropy==5.2.2
venv/bin/pytest
edit 'import pytest' 'import pytest
import logging

logging.basicConfig(level=logging.WARNING)'
open "conftest.py"
edit 'import os' 'import os
import logging

logging.basicConfig(level=logging.WARNING)'
venv/bin/pytest
edit 'logging.basicConfig(level=logging.WARNING)' 'logging.basicConfig(level=logging.DEBUG, format='"'"'%(asctime)s - %(levelname)s - %(message)s'"'"')'
venv/bin/pytest
venv/bin/pytest -o log_cli_level=DEBUG
create test_astropy.py
insert 'import astropy

def test_astropy_version():
    assert astropy.__version__ is not None
' 0
venv/bin/pytest test_astropy.py
edit 'import astropy' 'import warnings
warnings.showwarning = warnings._showwarnmsg

import astropy'
venv/bin/pytest test_astropy.py
insert 'import logging
logging.disable(logging.CRITICAL)
' 0
venv/bin/pytest test_astropy.py
venv/bin/pip list

