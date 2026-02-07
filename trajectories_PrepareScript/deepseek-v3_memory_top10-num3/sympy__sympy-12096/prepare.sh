ls -la
open ".travis.yml"
open "setup.py"
open "README.rst"
python3 -m venv .venv
apt-get update && apt-get install -y python3 python3-venv python3-dev build-essential
python3 -m venv .venv
source .venv/bin/activate
pip install mpmath>=0.19
pip show mpmath
python setup.py install
python setup.py test
open "sympy/core/basic.py"
edit 'from collections import Mapping' 'from collections.abc import Mapping'
python setup.py install
python setup.py test
open "sympy/plotting/plot.py"
edit 'from collections import Callable' 'from collections.abc import Callable'
python setup.py install
python setup.py test
open "sympy/matrices/matrices.py"
edit 'import collections' 'from collections.abc import Callable'
search_file collections.Callable sympy/matrices/matrices.py
edit 'isinstance(args[2], collections.Callable)' 'isinstance(args[2], Callable)'
goto 1768
edit 'isinstance(args[2], collections.Callable)' 'isinstance(args[2], Callable)'
python setup.py install
python setup.py test
search_dir collections.Iterable
open "/testbed/sympy/printing/conventions.py"
edit 'if not isinstance(expr.free_symbols, collections.Iterable):' 'if not isinstance(expr.free_symbols, collections.abc.Iterable):'
edit 'import collections' 'import collections.abc'
python setup.py install
python setup.py test
open "/testbed/sympy/assumptions/sathandlers.py"
edit 'from collections import MutableMapping, defaultdict' 'from collections.abc import MutableMapping
from collections import defaultdict'
python setup.py install
python setup.py test
open "/testbed/examples/advanced/pidigits.py"
edit 'from time import clock' 'from time import perf_counter as clock'
python setup.py install
python setup.py test
