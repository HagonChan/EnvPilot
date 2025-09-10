ls -la
ls -la .github/workflows
open ".travis.yml"
open "tox.ini"
pip install tox
python3 --version
apt-get update && apt-get install -y python3 python3-pip
python3 --version && pip3 --version
pip3 install tox
tox --version
tox
open "tox.ini"
edit 'passenv = USER USERNAME COVERAGE_* TRAVIS PYTEST_ADDOPTS' 'passenv = USER,USERNAME,COVERAGE_*,TRAVIS,PYTEST_ADDOPTS' False
tox
tox -e py37
python3.7 --version
apt-get update && apt-get install -y python3.7
edit 'envlist =' 'envlist =
    py310' False
tox -e py310
edit 'deps =
    numpy: numpy
    pexpect: pexpect
    pluggymaster: git+https://github.com/pytest-dev/pluggy.git@master
    twisted: twisted
    twisted: unittest2
    xdist: pytest-xdist>=1.13
    {env:_PYTEST_TOX_EXTRA_DEP:}' 'deps =
    pytest>=6.0.0
    numpy: numpy
    pexpect: pexpect
    pluggymaster: git+https://github.com/pytest-dev/pluggy.git@master
    twisted: twisted
    twisted: unittest2
    xdist: pytest-xdist>=1.13
    {env:_PYTEST_TOX_EXTRA_DEP:}' False
tox -e py310
edit 'deps =
    pytest>=6.0.0
    numpy: numpy
    pexpect: pexpect
    pluggymaster: git+https://github.com/pytest-dev/pluggy.git@master
    twisted: twisted
    twisted: unittest2
    xdist: pytest-xdist>=1.13
    {env:_PYTEST_TOX_EXTRA_DEP:}' 'deps =
    pytest>=7.0.0
    numpy: numpy
    pexpect: pexpect
    pluggymaster: git+https://github.com/pytest-dev/pluggy.git@master
    twisted: twisted
    twisted: unittest2
    xdist: pytest-xdist>=1.13
    {env:_PYTEST_TOX_EXTRA_DEP:}' False
tox -e py310
edit 'deps =
    pytest>=7.0.0
    numpy: numpy
    pexpect: pexpect
    pluggymaster: git+https://github.com/pytest-dev/pluggy.git@master
    twisted: twisted
    twisted: unittest2
    xdist: pytest-xdist>=1.13
    {env:_PYTEST_TOX_EXTRA_DEP:}' 'deps =
    pytest>=7.4.4
    numpy: numpy
    pexpect: pexpect
    pluggymaster: git+https://github.com/pytest-dev/pluggy.git@master
    twisted: twisted
    twisted: unittest2
    xdist: pytest-xdist>=1.13
    {env:_PYTEST_TOX_EXTRA_DEP:}' False
tox -e py310
edit 'deps =
    pytest>=7.4.4
    numpy: numpy
    pexpect: pexpect
    pluggymaster: git+https://github.com/pytest-dev/pluggy.git@master
    twisted: twisted
    twisted: unittest2
    xdist: pytest-xdist>=1.13
    {env:_PYTEST_TOX_EXTRA_DEP:}' 'deps =
    pytest>=8.0.0
    numpy: numpy
    pexpect: pexpect
    pluggymaster: git+https://github.com/pytest-dev/pluggy.git@master
    twisted: twisted
    twisted: unittest2
    xdist: pytest-xdist>=1.13
    {env:_PYTEST_TOX_EXTRA_DEP:}' False
tox -e py310
edit 'deps =
    pytest>=8.0.0
    numpy: numpy
    pexpect: pexpect
    pluggymaster: git+https://github.com/pytest-dev/pluggy.git@master
    twisted: twisted
    twisted: unittest2
    xdist: pytest-xdist>=1.13
    {env:_PYTEST_TOX_EXTRA_DEP:}' 'deps =
    pytest>=8.1.0
    numpy: numpy
    pexpect: pexpect
    pluggymaster: git+https://github.com/pytest-dev/pluggy.git@master
    twisted: twisted
    twisted: unittest2
    xdist: pytest-xdist>=1.13
    {env:_PYTEST_TOX_EXTRA_DEP:}' False
tox -e py310
edit 'deps =
    pytest>=8.1.0
    numpy: numpy
    pexpect: pexpect
    pluggymaster: git+https://github.com/pytest-dev/pluggy.git@master
    twisted: twisted
    twisted: unittest2
    xdist: pytest-xdist>=1.13
    {env:_PYTEST_TOX_EXTRA_DEP:}' 'deps =
    pytest>=8.2.0
    numpy: numpy
    pexpect: pexpect
    pluggymaster: git+https://github.com/pytest-dev/pluggy.git@master
    twisted: twisted
    twisted: unittest2
    xdist: pytest-xdist>=1.13
    {env:_PYTEST_TOX_EXTRA_DEP:}' False
tox -e py310
edit 'deps =
    pytest>=8.2.0
    numpy: numpy
    pexpect: pexpect
    pluggymaster: git+https://github.com/pytest-dev/pluggy.git@master
    twisted: twisted
    twisted: unittest2
    xdist: pytest-xdist>=1.13
    {env:_PYTEST_TOX_EXTRA_DEP:}' 'deps =
    pytest>=8.3.0
    numpy: numpy
    pexpect: pexpect
    pluggymaster: git+https://github.com/pytest-dev/pluggy.git@master
    twisted: twisted
    twisted: unittest2
    xdist: pytest-xdist>=1.13
    {env:_PYTEST_TOX_EXTRA_DEP:}' False
tox -e py310
edit 'deps =
    pytest>=8.3.0
    numpy: numpy
    pexpect: pexpect
    pluggymaster: git+https://github.com/pytest-dev/pluggy.git@master
    twisted: twisted
    twisted: unittest2
    xdist: pytest-xdist>=1.13
    {env:_PYTEST_TOX_EXTRA_DEP:}' 'deps =
    pytest>=8.4.0
    numpy: numpy
    pexpect: pexpect
    pluggymaster: git+https://github.com/pytest-dev/pluggy.git@master
    twisted: twisted
    twisted: unittest2
    xdist: pytest-xdist>=1.13
    {env:_PYTEST_TOX_EXTRA_DEP:}' False
tox -e py310
edit 'deps =
    pytest>=8.4.0
    numpy: numpy
    pexpect: pexpect
    pluggymaster: git+https://github.com/pytest-dev/pluggy.git@master
    twisted: twisted
    twisted: unittest2
    xdist: pytest-xdist>=1.13
    {env:_PYTEST_TOX_EXTRA_DEP:}' 'deps =
    pytest>=8.5.0
    numpy: numpy
    pexpect: pexpect
    pluggymaster: git+https://github.com/pytest-dev/pluggy.git@master
    twisted: twisted
    twisted: unittest2
    xdist: pytest-xdist>=1.13
    {env:_PYTEST_TOX_EXTRA_DEP:}' False
tox -e py310
edit 'deps =
    pytest>=8.5.0
    numpy: numpy
    pexpect: pexpect
    pluggymaster: git+https://github.com/pytest-dev/pluggy.git@master
    twisted: twisted
    twisted: unittest2
    xdist: pytest-xdist>=1.13
    {env:_PYTEST_TOX_EXTRA_DEP:}' 'deps =
    pytest>=8.4.1
    numpy: numpy
    pexpect: pexpect
    pluggymaster: git+https://github.com/pytest-dev/pluggy.git@master
    twisted: twisted
    twisted: unittest2
    xdist: pytest-xdist>=1.13
    {env:_PYTEST_TOX_EXTRA_DEP:}' False
tox -e py310
edit 'deps =
    pytest>=8.4.1
    numpy: numpy
    pexpect: pexpect
    pluggymaster: git+https://github.com/pytest-dev/pluggy.git@master
    twisted: twisted
    twisted: unittest2
    xdist: pytest-xdist>=1.13
    {env:_PYTEST_TOX_EXTRA_DEP:}' 'deps =
    pytest>=7.4.4
    numpy: numpy
    pexpect: pexpect
    pluggymaster: git+https://github.com/pytest-dev/pluggy.git@master
    twisted: twisted
    twisted: unittest2
    xdist: pytest-xdist>=1.13
    {env:_PYTEST_TOX_EXTRA_DEP:}' False
tox -e py310
edit 'deps =
    pytest>=7.4.4
    numpy: numpy
    pexpect: pexpect
    pluggymaster: git+https://github.com/pytest-dev/pluggy.git@master
    twisted: twisted
    twisted: unittest2
    xdist: pytest-xdist>=1.13
    {env:_PYTEST_TOX_EXTRA_DEP:}' 'deps =
    pytest>=6.2.5
    numpy: numpy
    pexpect: pexpect
    pluggymaster: git+https://github.com/pytest-dev/pluggy.git@master
    twisted: twisted
    twisted: unittest2
    xdist: pytest-xdist>=1.13
    {env:_PYTEST_TOX_EXTRA_DEP:}' False
tox -e py310
pip3 install pytest==6.2.5
pytest
pip3 install pytest==4.6.11
pytest
pip3 install pytest==3.10.1
pytest

