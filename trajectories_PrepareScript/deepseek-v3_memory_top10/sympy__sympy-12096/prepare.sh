ls -la
open ".travis.yml"
open "setup.py"
open "README.rst"
apt-get update && apt-get install -y python3-dev python3-pip build-essential
pip install 'mpmath>=0.19'
python3 -m venv venv && source venv/bin/activate
apt-get install -y python3.10-venv
python3 -m venv venv && source venv/bin/activate
python setup.py install
python setup.py test
open "sympy/core/basic.py"
edit 'from collections import Mapping' 'from collections.abc import Mapping'
python setup.py test
open "sympy/plotting/plot.py"
edit 'from collections import Callable' 'from collections.abc import Callable'
python setup.py test
open "sympy/matrices/matrices.py"
edit 'import collections' 'from collections.abc import Callable'
search_file collections.Callable sympy/matrices/matrices.py
edit 'isinstance(args[2], collections.Callable)' 'isinstance(args[2], Callable)'
goto 1768
edit 'isinstance(args[2], collections.Callable)' 'isinstance(args[2], Callable)'
python setup.py test
open "sympy/printing/conventions.py"
edit 'import collections' 'from collections.abc import Iterable'
edit 'isinstance(expr.free_symbols, collections.Iterable)' 'isinstance(expr.free_symbols, Iterable)'
python setup.py test
open "sympy/assumptions/sathandlers.py"
edit 'from collections import MutableMapping, defaultdict' 'from collections.abc import MutableMapping
from collections import defaultdict'
python setup.py test
open "examples/advanced/pidigits.py"
edit 'from time import clock' 'from time import perf_counter as clock'
python setup.py test
