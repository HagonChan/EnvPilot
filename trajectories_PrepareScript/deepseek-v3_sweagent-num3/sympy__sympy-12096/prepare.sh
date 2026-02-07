ls -la
open ".travis.yml"
scroll_down
scroll_down
scroll_down
open "bin/test_travis.sh"
open "setup.py"
sudo apt-get update && sudo apt-get install -y libatlas-dev liblapack-dev gfortran graphviz inkscape
apt-get update && apt-get install -y libatlas-dev liblapack-dev gfortran graphviz inkscape
apt-get install -y libatlas-base-dev liblapack-dev gfortran graphviz inkscape
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
edit 'import collections' 'from collections.abc import Callable'
python3 setup.py test
search_file collections.Callable sympy/matrices/matrices.py
edit collections.Callable Callable
goto 1768
edit collections.Callable Callable
python3 setup.py test
open "examples/advanced/pidigits.py"
edit 'from time import clock' 'from time import perf_counter'
edit 't = clock()' 't = perf_counter()'
edit 't = clock()' 't = perf_counter()'
edit 't = clock()' 't = perf_counter()' True
edit 'step1_time = clock() - t' 'step1_time = perf_counter() - t' True
edit 'step2_time = clock() - t' 'step2_time = perf_counter() - t'
python3 setup.py test
open "sympy/assumptions/sathandlers.py"
edit 'from collections import MutableMapping, defaultdict' 'from collections.abc import MutableMapping; from collections import defaultdict'
open "sympy/printing/conventions.py"
edit 'import collections' 'from collections.abc import Iterable'
edit 'if not isinstance(expr.free_symbols, collections.Iterable):' 'if not isinstance(expr.free_symbols, Iterable):'
python3 setup.py test
