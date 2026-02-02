ls -la
open ".travis.yml"
open "setup.py"
open "README.rst"
apt-get update && apt-get install -y libatlas-dev liblapack-dev gfortran python3-dev
apt-get install -y libatlas-base-dev liblapack-dev gfortran python3-dev
python3 -m venv venv
apt-get install -y python3.10-venv
python3 -m venv venv
source venv/bin/activate
pip install mpmath>=0.19
python setup.py install
python setup.py test
find_file basic.py sympy/core
open "sympy/core/basic.py"
edit 'from collections import Mapping' 'from collections.abc import Mapping'
python setup.py test
find_file plot.py sympy/plotting
open "sympy/plotting/plot.py"
edit 'from collections import Callable' 'from collections.abc import Callable'
python setup.py test
search_dir collections.Callable sympy
open "sympy/matrices/matrices.py"
edit 'import collections' 'import collections.abc'
search_file collections.Callable sympy/matrices/matrices.py
edit 'isinstance(args[2], collections.Callable)' 'isinstance(args[2], collections.abc.Callable)'
goto 1768
edit 'if len(args) == 3 and isinstance(args[2], collections.Callable):' 'if len(args) == 3 and isinstance(args[2], collections.abc.Callable):'
python setup.py test
search_dir collections.Iterable sympy
open "sympy/printing/conventions.py"
edit 'import collections' 'import collections.abc'
edit 'if not isinstance(expr.free_symbols, collections.Iterable):' 'if not isinstance(expr.free_symbols, collections.abc.Iterable):'
open "sympy/physics/mechanics/linearize.py"
edit 'import collections' 'import collections.abc
import collections'
search_dir collections.Iterable sympy
open "sympy/tensor/array/arrayop.py"
edit 'import collections' 'import collections.abc
import collections'
search_file collections.Iterable sympy/tensor/array/arrayop.py
goto 107
edit 'if not isinstance(axes_group, collections.Iterable):' 'if not isinstance(axes_group, collections.abc.Iterable):'
goto 194
edit 'array_types = (collections.Iterable, MatrixBase, NDimArray)' 'array_types = (collections.abc.Iterable, MatrixBase, NDimArray)'
python setup.py test
search_dir collections.MutableMapping sympy
open "sympy/assumptions/sathandlers.py"
edit 'from collections import MutableMapping, defaultdict' 'from collections.abc import MutableMapping
from collections import defaultdict'
goto 3
edit 'from collections import MutableMapping, defaultdict' 'from collections.abc import MutableMapping
from collections import defaultdict'

