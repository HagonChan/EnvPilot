find_file '.github/workflows/*.yml'
find_file .gitlab-ci.yml
find_file .circleci/config.yml
find_file azure-pipelines.yml
open "/testbed/azure-pipelines.yml"
find_file pyproject.toml
open "/testbed/pyproject.toml"
find_file tox.ini
open "/testbed/tox.ini"
apt-get update && apt-get install -y language-pack-de language-pack-fr tzdata graphviz g++ pkg-config python3-configobj python3-numpy python3-ply python3-venv cython3 libwcs7 wcslib-dev libcfitsio-dev liberfa1 git python3-dev build-essential libssl-dev
pip install --upgrade tox codecov
apt-get install -y python3-pip
pip install --upgrade tox codecov
tox
open "/testbed/tox.ini"
edit 'passenv = HOME WINDIR LC_ALL LC_CTYPE CC CI IS_CRON ARCH_ON_CI TEST_READ_HUGE_FILE' 'passenv = HOME,WINDIR,LC_ALL,LC_CTYPE,CC,CI,IS_CRON,ARCH_ON_CI,TEST_READ_HUGE_FILE'
tox
apt-get update && apt-get install -y python3.8 python3.9 python3.10
apt-get update && apt-get install -y software-properties-common && add-apt-repository -y ppa:deadsnakes/ppa && apt-get update
apt-get install -y python3.8 python3.9 python3.10
tox
pip install --upgrade setuptools
tox
pip install setuptools==58.0.0
tox
find_file setup.py
open "/testbed/setup.py"
find_file setup.cfg
open "/testbed/setup.cfg"
open "/testbed/astropy/wcs/setup_package.py"
edit 'from setuptools.dep_util import newer_group' 'def newer_group(sources, target, missing='"'"'error'"'"'):
    """
    Determine if any file in `sources` is newer than `target`.

    Parameters
    ----------
    sources : list
        List of source filenames.
    target : str
        Target filename.
    missing : {'"'"'error'"'"', '"'"'ignore'"'"'}
        What to do if a source file is missing.

    Returns
    -------
    bool
        True if any source file is newer than the target.
    """
    if not os.path.exists(target):
        return True

    target_mtime = os.path.getmtime(target)

    for source in sources:
        if not os.path.exists(source):
            if missing == '"'"'error'"'"':
                raise RuntimeError(f"File '"'"'{source}'"'"' not found.")
            elif missing == '"'"'ignore'"'"':
                continue
            else:
                raise ValueError(f"Invalid value for '"'"'missing'"'"': {missing}")

        if os.path.getmtime(source) > target_mtime:
            return True

    return False'
tox
python3.8 -m pytest
python3.8 -m pip install pytest
apt-get install -y python3.8-distutils
python3.8 -m pip install pytest
python3.8 -m pip install pyerfa>=2.0 PyYAML>=3.13
python3.8 -m pytest
python3.8 -m pip install --upgrade numpy
python3.8 -m pytest
python3.8 -m pip install -e .
apt-get install -y build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev python-openssl
python3.8 -m pip install -e .
apt-get install -y libcfitsio-dev libwcs7 wcslib-dev liberfa1
python3.8 -m pip install .
apt-get install -y python3.8-dev
python3.8 -m pip install .
python3.8 -m pytest
python3.8 setup.py build_ext --inplace

