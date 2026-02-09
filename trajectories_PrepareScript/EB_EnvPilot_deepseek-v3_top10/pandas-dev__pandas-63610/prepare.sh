ls
open "README.md"
open "pyproject.toml"
open "requirements-dev.txt"
apt-get update && apt-get install -y gcc g++ make pkg-config libssl-dev libffi-dev python3-dev build-essential libegl1 libopengl0 language-pack-it language-pack-zh-hans musl-locales
pip install meson ninja cython
apt-get install -y python3-pip
pip install meson ninja cython
pip install -r requirements-dev.txt
pip install -e . --no-build-isolation
pip install numpy
python3 -c "import numpy; print(numpy.get_include())"
open "/testbed/build/cp310/meson-logs/meson-log.txt"
pip install --force-reinstall numpy
python3 -c "import numpy; print(numpy.get_include())"
pip install -e . --no-build-isolation
python3 --version
python3 -c "import os; import numpy as np; try: incdir = os.path.relpath(np.get_include()); except Exception: incdir = np.get_include(); print(incdir)"
python3 -c "import os; import numpy as np; print(np.get_include())"
open "meson.build"
edit 'import os
      import numpy as np
      try:
          # Check if include directory is inside the pandas dir
          # e.g. a venv created inside the pandas dir
          # If so, convert it to a relative path
          incdir = os.path.relpath(np.get_include())
      except Exception:
          incdir = np.get_include()
      print(incdir)' 'import numpy as np; print(np.get_include())'
search_file numpy.get_include meson.build
open "setup.py"
search_file numpy.get_include setup.py
pip show numpy
open "pyproject.toml"
python3 -c "import numpy; print(numpy.get_include())"
CFLAGS="-I$(python3 -c 'import numpy; print(numpy.get_include())')" pip install -e . --no-build-isolation
open "meson.build"
search_dir numpy.get_include pandas
NUMPY_INCLUDE=$(python3 -c "import numpy; print(numpy.get_include())") pip install -e . --no-build-isolation
python3 -m venv venv
apt install -y python3.10-venv
python3 -m venv venv
source venv/bin/activate && pip install numpy meson ninja cython
source venv/bin/activate && pip install -e . --no-build-isolation
source venv/bin/activate && pip install mesonpy
source venv/bin/activate && pip install -e . --no-build-isolation
source venv/bin/activate && python3 -c "import meson; print(dir(meson))"
apt install -y meson
source venv/bin/activate && pip install -e . --no-build-isolation
git clone https://github.com/mesonbuild/meson.git
meson --version
open "pyproject.toml"
source venv/bin/activate && pip install meson-python
source venv/bin/activate && pip install -e . --no-build-isolation
open "generate_version.py"
source venv/bin/activate && python3 generate_version.py --print
source venv/bin/activate && pip install versioneer

