ls -la
find_file '.github/workflows/*.yml'
find_file .circleci/config.yml
find_file .gitlab-ci.yml
open "pyproject.toml"
open "environment.yml"
pip install meson-python Cython>=3.0.8 pybind11>=2.13.2 pythran>=0.14.0 numpy>=2.0.0
apt-get update && apt-get install -y python3-pip
pip install meson-python Cython>=3.0.8 pybind11>=2.13.2 pythran>=0.14.0 numpy>=2.0.0
pip install --default-timeout=1000 meson-python Cython>=3.0.8 pybind11>=2.13.2 pythran>=0.14.0 numpy>=2.0.0
pip cache purge && pip install --default-timeout=1000 meson-python Cython>=3.0.8 pybind11>=2.13.2 pythran>=0.14.0 numpy>=2.0.0
pip install --default-timeout=1000 Cython==3.0.8
pip install --default-timeout=1000 meson-python
pip install --default-timeout=1000 pybind11>=2.13.2 pythran>=0.14.0
pip install --default-timeout=1000 numpy>=2.0.0
cd /testbed && python -m pip install -v --no-build-isolation -e .
apt-get update && apt-get install -y python3.12
apt-get install -y software-properties-common && add-apt-repository ppa:deadsnakes/ppa -y && apt-get update && apt-get install -y python3.12
python3.12 -m ensurepip --upgrade
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && python3.12 get-pip.py
apt-get install -y curl
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && python3.12 get-pip.py
python3.12 -m pip --version
python3.12 -m pip install meson-python Cython>=3.0.8 pybind11>=2.13.2 pythran>=0.14.0 numpy>=2.0.0
cd /testbed && python3.12 -m pip install -v --no-build-isolation -e .
apt-get install -y ninja-build
cd /testbed && python3.12 -m pip install -v --no-build-isolation -e .
apt-get install -y python3.12-dev
cd /testbed && python3.12 -m pip install -v --no-build-isolation -e .
apt-get install -y gfortran
cd /testbed && python3.12 -m pip install -v --no-build-isolation -e .
cd /testbed && git submodule update --init
cd /testbed && python3.12 -m pip install -v --no-build-isolation -e .
which f2py && f2py --version
f2py -v
echo "print('Hello from f2py')" > test.py && f2py -c test.py -m test
python3.12 -m pip uninstall -y numpy && python3.12 -m pip install numpy>=2.0.0
echo "subroutine hello()
print *, 'Hello from Fortran'
end subroutine hello" > hello.f && f2py -c hello.f -m hello
echo "subroutine hello()
  print *, 'Hello from Fortran'
end subroutine hello" > hello.f90 && f2py -c hello.f90 -m hello
cd /testbed && python3.12 -m pip install -v --no-build-isolation -e .
cd /testbed && python3.12 -m pip install -v --no-build-isolation .
open "meson.build"
open "scipy/meson.build"
edit 'f2py_freethreading_arg = []
if _numpy_dep.version().version_compare('"'"'>=2.1.0'"'"')
  f2py_freethreading_arg = ['"'"'--free-threading'"'"']
  message('"'"'f2py free-threading enabled'"'"')
else
  message('"'"'f2py free-threading disabled; need numpy >=2.1.0.'"'"')
  message('"'"'See https://github.com/mesonbuild/meson/issues/14651'"'"')
endif' 'f2py_freethreading_arg = []
# Skip f2py version check for compatibility with Python 3.12
# if _numpy_dep.version().version_compare('"'"'>=2.1.0'"'"')
#   f2py_freethreading_arg = ['"'"'--free-threading'"'"']
#   message('"'"'f2py free-threading enabled'"'"')
# else
#   message('"'"'f2py free-threading disabled; need numpy >=2.1.0.'"'"')
#   message('"'"'See https://github.com/mesonbuild/meson/issues/14651'"'"')
# endif'
mkdir -p /tmp/scipy-build && cp -r /testbed/* /tmp/scipy-build/
cd /tmp/scipy-build && python3.12 -m pip install -v --no-build-isolation .
export F2PY_VERSION=2.4.1 && cd /tmp/scipy-build && python3.12 -m pip install -v --no-build-isolation .
python3.12 -m venv /tmp/scipy-venv && source /tmp/scipy-venv/bin/activate && pip install meson-python Cython>=3.0.8 pybind11>=2.13.2 pythran>=0.14.0 numpy>=2.0.0
