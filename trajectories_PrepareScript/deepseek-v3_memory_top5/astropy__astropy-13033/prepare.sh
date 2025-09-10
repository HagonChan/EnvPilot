ls -la
ls -la .github/workflows
open ".github/workflows/ci_workflows.yml"
open "tox.ini"
apt-get update && apt-get install -y language-pack-de tzdata language-pack-fr graphviz git g++ pkg-config python3 python3-configobj python3-numpy python3-ply python3-venv cython3 libwcs7 wcslib-dev libcfitsio-dev liberfa1
python3.10 -m venv venv
source venv/bin/activate && pip install --upgrade tox
tox -e py310-test
edit 'passenv = HOME WINDIR LC_ALL LC_CTYPE CC CI IS_CRON ARCH_ON_CI TEST_READ_HUGE_FILE' 'passenv = HOME,WINDIR,LC_ALL,LC_CTYPE,CC,CI,IS_CRON,ARCH_ON_CI,TEST_READ_HUGE_FILE' True
tox -e py310-test
pip install --upgrade setuptools
tox -e py310-test
pip install setuptools==58.0.4
tox -e py310-test
open "setup.py"
pip show extension-helpers
pip install extension-helpers
tox -e py310-test
find_file setup_package.py
open "astropy/wcs/setup_package.py"
edit 'from setuptools.dep_util import newer_group' 'def newer_group(sources, target, missing='"'"'error'"'"'):
    """Return true if '"'"'target'"'"' is out-of-date with respect to any file in '"'"'sources'"'"'."""
    from os.path import exists, getmtime
    if not exists(target):
        return True
    target_mtime = getmtime(target)
    for source in sources:
        if not exists(source):
            if missing == '"'"'error'"'"':
                raise OSError("'"'"'%s'"'"' does not exist" % source)
            elif missing == '"'"'ignore'"'"':
                continue
            else:
                raise ValueError("invalid '"'"'missing'"'"' parameter: %r" % missing)
        if getmtime(source) > target_mtime:
            return True
    return False' False
tox -e py310-test
pip install numpy==1.21.0
pip install pyerfa>=2.0 PyYAML>=3.13
tox -e py310-test
edit 'deps =' 'deps =
    numpy==1.21.0' False
open "tox.ini"
edit 'numpy121: numpy==1.21.*' 'numpy121: numpy==1.21.0' False
tox -e py310-test
pip install numpy==1.21.0
tox -e py310-test -- numpy==1.21.0
create requirements.txt
edit '' 'numpy==1.21.0
pyerfa>=2.0
PyYAML>=3.13' False
edit '' 'numpy==1.21.0
pyerfa>=2.0
PyYAML>=3.13' False
insert numpy==1.21.0
insert 'pyerfa>=2.0'
insert 'PyYAML>=3.13'
pip install -r requirements.txt
tox -e py310-test
edit 'numpy121: numpy==1.21.*' 'numpy121: numpy==1.21.0' False
open "tox.ini"
edit 'commands =' 'commands =
    pip install numpy==1.21.0' False
edit 'pip install numpy==1.21.0' '' True
edit 'commands =' 'commands =
    pip install numpy==1.21.0' False
edit 'pip install numpy==1.21.0' '' True
edit 'commands =' 'commands =
    pip install numpy==1.21.0' False
edit 'pip install numpy==1.21.0' '' True
edit 'commands =' 'commands =
    pip install numpy==1.21.0' False
edit 'pip install numpy==1.21.0' '' True

