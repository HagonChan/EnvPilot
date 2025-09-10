ls -la
ls -la .github/workflows
open ".github/workflows/ci_workflows.yml"
open "tox.ini"
open "setup.py"
open "setup.cfg"
pip install tox
apt-get update && apt-get install -y python3-pip
pip install tox
tox -e test
open "tox.ini"
edit 'passenv = HOME WINDIR LC_ALL LC_CTYPE CC CI IS_CRON ARCH_ON_CI TEST_READ_HUGE_FILE' 'passenv = HOME,WINDIR,LC_ALL,LC_CTYPE,CC,CI,IS_CRON,ARCH_ON_CI,TEST_READ_HUGE_FILE' False
tox -e test
tox -e test
pip install --upgrade setuptools
tox -e test
curl -o pip_pinnings.txt https://raw.githubusercontent.com/astropy/ci-helpers/main/pip_pinnings.txt
apt-get install -y curl
curl -o pip_pinnings.txt https://raw.githubusercontent.com/astropy/ci-helpers/main/pip_pinnings.txt
curl -k -o pip_pinnings.txt https://raw.githubusercontent.com/astropy/ci-helpers/main/pip_pinnings.txt
open "tox.ini"
create pip_pinnings.txt
edit '' 'numpy==1.21.*
matplotlib==3.1.1
scipy==1.3.*
pytest-mpl==0.12' False
echo -e "numpy==1.21.*\nmatplotlib==3.1.1\nscipy==1.3.*\npytest-mpl==0.12" > pip_pinnings.txt
edit 'pypi_filter = https://raw.githubusercontent.com/astropy/ci-helpers/main/pip_pinnings.txt' 'pypi_filter = pip_pinnings.txt' False
tox -e test
pip install setuptools==58.0.0
tox -e test
open "astropy/wcs/setup_package.py"
edit 'from setuptools.dep_util import newer_group' 'def newer_group(sources, target):
    """Return True if any file in sources is newer than target."""
    if not os.path.exists(target):
        return True
    target_mtime = os.path.getmtime(target)
    return any(os.path.getmtime(source) > target_mtime for source in sources)' False
tox -e test
edit 'def newer_group(sources, target):
    """Return True if any file in sources is newer than target."""
    if not os.path.exists(target):
        return True
    target_mtime = os.path.getmtime(target)
    return any(os.path.getmtime(source) > target_mtime for source in sources)' 'def newer_group(sources, target, _=None):
    """Return True if any file in sources is newer than target."""
    if not os.path.exists(target):
        return True
    target_mtime = os.path.getmtime(target)
    return any(os.path.getmtime(source) > target_mtime for source in sources)' False
tox -e test
pip show numpy
tox -e test --notest
pip install numpy==1.21.*
pip install pyerfa>=2.0 PyYAML>=3.13
tox -e test
pip install numpy==1.19.5
apt-get install -y build-essential python3-dev
pip install numpy==1.18.5
pip install cython
pip install numpy==1.18.5
pip install cython==0.29.14
pip install numpy==1.18.5 --only-binary=:all:
pip install numpy==1.21.6
tox -e test
pip install numpy==1.17.0
pip install numpy==1.17.0 --only-binary=:all:

