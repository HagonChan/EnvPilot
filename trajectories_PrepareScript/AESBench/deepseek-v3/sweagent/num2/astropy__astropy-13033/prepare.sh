ls -la
ls -la .github/workflows
open ".github/workflows/ci_workflows.yml"
open "tox.ini"
open "setup.py"
open "setup.cfg"
apt-get update && apt-get install -y tox
tox -e codestyle
edit 'passenv = HOME WINDIR LC_ALL LC_CTYPE CC CI IS_CRON ARCH_ON_CI TEST_READ_HUGE_FILE' 'passenv = HOME,WINDIR,LC_ALL,LC_CTYPE,CC,CI,IS_CRON,ARCH_ON_CI,TEST_READ_HUGE_FILE'
open "tox.ini"
edit 'passenv = HOME WINDIR LC_ALL LC_CTYPE CC CI IS_CRON ARCH_ON_CI TEST_READ_HUGE_FILE' 'passenv = HOME,WINDIR,LC_ALL,LC_CTYPE,CC,CI,IS_CRON,ARCH_ON_CI,TEST_READ_HUGE_FILE' True
tox -e codestyle
tox -e py310-test
open "tox.ini"
edit 'setuptools >= 30.3.0' 'setuptools >= 30.3.0, < 58.0.0' True
tox -e py310-test
open "setup.py"
pip install setuptools==57.5.0
tox -e py310-test
python -m venv venv && source venv/bin/activate
apt-get install -y python3.10 python3.10-venv
python3.10 -m venv venv && source venv/bin/activate
pip install -e .
pip install setuptools==45.0.0
pip install -e .
open "astropy/wcs/setup_package.py"
edit 'from setuptools.dep_util import newer_group' 'def newer_group(files, target_file):
    """
    Custom implementation of newer_group to replace setuptools.dep_util.newer_group.
    Returns True if any file in files is newer than target_file.
    """
    if not os.path.exists(target_file):
        return True
    target_mtime = os.path.getmtime(target_file)
    for file in files:
        if os.path.exists(file) and os.path.getmtime(file) > target_mtime:
            return True
    return False' False
pip install -e .
edit 'def newer_group(files, target_file):
    """
    Custom implementation of newer_group to replace setuptools.dep_util.newer_group.
    Returns True if any file in files is newer than target_file.
    """
    if not os.path.exists(target_file):
        return True
    target_mtime = os.path.getmtime(target_file)
    for file in files:
        if os.path.exists(file) and os.path.getmtime(file) > target_mtime:
            return True
    return False' 'def newer_group(files, target_file, *args):
    """
    Custom implementation of newer_group to replace setuptools.dep_util.newer_group.
    Returns True if any file in files is newer than target_file.
    The third argument is ignored for backward compatibility.
    """
    if not os.path.exists(target_file):
        return True
    target_mtime = os.path.getmtime(target_file)
    for file in files:
        if os.path.exists(file) and os.path.getmtime(file) > target_mtime:
            return True
    return False' False
pip install -e .
tox -e py310-test
pip install numpy==1.21.0
tox -e py310-test
pip show numpy
pip install -e .
pytest --pyargs astropy
pip install pytest
pytest --pyargs astropy
pip install hypothesis
pytest --pyargs astropy
open "setup.cfg"
pytest
pytest astropy
echo "[pytest]" > pytest.ini && echo "addopts = " >> pytest.ini
pytest astropy
pytest astropy/utils/tests/test_iers.py
ls astropy/utils/tests
pytest astropy/utils/tests/test_misc.py
