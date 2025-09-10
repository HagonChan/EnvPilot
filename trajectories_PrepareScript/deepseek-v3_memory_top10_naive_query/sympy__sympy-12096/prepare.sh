ls -la
open ".travis.yml"
open "setup.py"
open "README.rst"
apt-get update && apt-get install -y python3-dev python3-pip git build-essential libatlas-dev liblapack-dev gfortran
apt-get install -y python3-dev python3-pip git build-essential libatlas-base-dev liblapack-dev gfortran
pip3 install mpmath>=0.19
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
edit 'if len(args) == 3 and isinstance(args[2], collections.Callable):' 'if len(args) == 3 and isinstance(args[2], Callable):'
python3 setup.py test
open "sympy/printing/conventions.py"
edit 'if not isinstance(expr.free_symbols, collections.Iterable):' 'if not isinstance(expr.free_symbols, collections.abc.Iterable):'
python3 setup.py test
open "sympy/assumptions/sathandlers.py"
edit 'from collections import MutableMapping, defaultdict' 'from collections.abc import MutableMapping
from collections import defaultdict'
python3 setup.py test
