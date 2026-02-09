ls -la
open ".travis.yml"
open "setup.py"
open "README.rst"
apt-get update && apt-get install -y python3-dev build-essential libatlas-dev libatlas-base-dev liblapack-dev gfortran python3-scipy
apt-get install -y python3-dev build-essential libatlas-base-dev liblapack-dev gfortran python3-scipy
python3 -m venv venv
apt-get install -y python3.10-venv
python3 -m venv venv
source venv/bin/activate
pip install 'mpmath>=0.19'
python setup.py install
pytest
pip install pytest
pytest
open "sympy/core/basic.py"
sed -i 's/from collections import Mapping/from collections.abc import Mapping/g' sympy/core/basic.py
pytest
sed -i 's/from collections import Callable/from collections.abc import Callable/g' sympy/plotting/plot.py
pytest
apt-get install -y python3.5 python3.5-venv
pip install virtualenv
which python3.5

ls /usr/bin/python*
find . -type f -name "*.py" -exec sed -i 's/from collections import Callable/from collections.abc import Callable/g' {} +
find . -type f -name "*.py" -exec sed -i 's/from collections import Mapping/from collections.abc import Mapping/g' {} +
pytest


find . -type f -name "*.py" -exec sed -i 's/from collections import Callable/from collections.abc import Callable/g' {} +
find . -type f -name "*.py" -exec sed -i 's/from collections import Mapping/from collections.abc import Mapping/g' {} +
pytest
grep -r "from collections import Callable" .
grep -r "from collections import Mapping" .
apt-get install -y python3.5 python3.5-venv
pip install virtualenv
which python3.5
find . -type f -name "*.py" -exec sed -i 's/collections.Callable/collections.abc.Callable/g' {} +
find . -type f -name "*.py" -exec sed -i 's/collections.Mapping/collections.abc.Mapping/g' {} +
pytest
