ls -la
open ".travis.yml"
open "setup.py"
open "README.rst"
apt-get update
apt-get install -y libatlas-dev liblapack-dev gfortran python3-mpmath
apt-get install -y libatlas-base-dev liblapack-dev gfortran python3-mpmath
python setup.py install
python3 setup.py install
apt-get install -y python3-setuptools
python3 setup.py install
python3 setup.py test
open "sympy/core/basic.py"
edit 'from collections import Mapping' 'from collections.abc import Mapping'
python3 setup.py test
open "sympy/plotting/plot.py"
edit 'from collections import Callable' 'from collections.abc import Callable'
python3 setup.py test
open "sympy/matrices/matrices.py"
edit 'import collections' 'from collections.abc import Callable
import collections'
python3 setup.py test
search_file collections.Callable sympy/matrices/matrices.py
edit 'if len(args) == 3 and isinstance(args[2], collections.Callable):' 'if len(args) == 3 and isinstance(args[2], Callable):'
goto 1769
edit 'isinstance(args[2], collections.Callable)' 'isinstance(args[2], Callable)'
python3 setup.py test
search_dir collections.Iterable
open "sympy/printing/conventions.py"
edit 'if not isinstance(expr.free_symbols, collections.Iterable):' 'if not isinstance(expr.free_symbols, collections.abc.Iterable):'
edit 'import re
import collections' 'import re
import collections
import collections.abc'
python3 setup.py test
open "sympy/assumptions/sathandlers.py"
edit 'from collections import MutableMapping, defaultdict' 'from collections.abc import MutableMapping
from collections import defaultdict'
open "examples/advanced/pidigits.py"
edit 'from time import clock' 'from time import perf_counter as clock'
python3 setup.py test
