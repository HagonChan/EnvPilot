ls -la
open ".travis.yml"
open "setup.py"
open "README.rst"
apt-get update && apt-get install -y libatlas-dev liblapack-dev gfortran graphviz inkscape texlive texlive-xetex texlive-fonts-recommended texlive-latex-extra lmodern librsvg2-bin imagemagick docbook2x
apt-get install -y libatlas-dev liblapack-dev gfortran graphviz inkscape texlive texlive-xetex texlive-fonts-recommended texlive-latex-extra lmodern librsvg2-bin imagemagick docbook2x
apt-get install -y libatlas-base-dev liblapack-dev gfortran graphviz inkscape texlive texlive-xetex texlive-fonts-recommended texlive-latex-extra lmodern librsvg2-bin imagemagick docbook2x
python -c "import mpmath; print(mpmath.__version__)"
apt-get install -y python3 python3-pip
python3 -c "import mpmath; print(mpmath.__version__)"
pip3 install 'mpmath>=0.19'
python3 setup.py install
python3 setup.py test
open "sympy/core/basic.py"
edit 'from collections import Mapping' 'from collections.abc import Mapping'
python3 setup.py test
open "sympy/plotting/plot.py"
edit 'from collections import Callable' 'from collections.abc import Callable'
python3 setup.py test
open "sympy/matrices/matrices.py"
search_file collections.Callable sympy/matrices/matrices.py
edit 'import collections' 'import collections.abc'
edit 'isinstance(args[2], collections.Callable)' 'isinstance(args[2], collections.abc.Callable)'
goto 1768
edit 'isinstance(args[2], collections.Callable)' 'isinstance(args[2], collections.abc.Callable)'
python3 setup.py test
search_dir collections.Iterable
open "sympy/printing/conventions.py"
edit 'import collections' 'import collections.abc'
edit 'if not isinstance(expr.free_symbols, collections.Iterable):' 'if not isinstance(expr.free_symbols, collections.abc.Iterable):'
python3 setup.py test
open "sympy/assumptions/sathandlers.py"
edit 'from collections import MutableMapping, defaultdict' 'from collections.abc import MutableMapping
from collections import defaultdict'
open "examples/advanced/pidigits.py"
edit 'from time import clock' 'from time import perf_counter as clock'
python3 setup.py test
