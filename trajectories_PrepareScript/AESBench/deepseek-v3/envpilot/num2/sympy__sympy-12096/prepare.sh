ls -la
open ".travis.yml"
open "setup.py"
open "README.rst"
apt-get update && apt-get install -y libatlas-dev liblapack-dev gfortran python3-dev build-essential
apt-get install -y libatlas-base-dev liblapack-dev gfortran python3-dev build-essential
python3 --version && python3 -m pip --version || apt-get install -y python3-pip
python3 -m pip install mpmath>=0.19
python3 setup.py install
python3 setup.py test
open "sympy/core/basic.py"
edit 'from collections import Mapping' 'from collections.abc import Mapping'
python3 setup.py test
open "sympy/plotting/plot.py"
edit 'from collections import Callable' 'from collections.abc import Callable'
python3 setup.py test
open "sympy/matrices/matrices.py"
edit 'import collections' 'import collections.abc'
search_file collections.Callable sympy/matrices/matrices.py
edit 'isinstance(args[2], collections.Callable)' 'isinstance(args[2], collections.abc.Callable)'
goto 1768
edit 'isinstance(args[2], collections.Callable)' 'isinstance(args[2], collections.abc.Callable)'
python3 setup.py test
open "examples/advanced/pidigits.py"
edit 'from time import clock' 'from time import time'
edit 't = clock()' 't = time()'
edit 't = clock()' 't = time()'
search_file 'clock()' examples/advanced/pidigits.py
edit 't = clock()' 't = time()'
edit 't = clock()' 't = time()'
edit 't = clock()' 't = time()'

