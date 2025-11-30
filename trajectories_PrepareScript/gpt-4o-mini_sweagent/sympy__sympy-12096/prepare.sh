find_file '*.yml' .github/workflows
find_file '*.yml' .
open ".travis.yml"
apt-get update
apt-get install -y libatlas-dev libatlas-base-dev liblapack-dev gfortran python-scipy graphviz inkscape texlive texlive-xetex texlive-fonts-recommended texlive-latex-extra lmodern librsvg2-bin imagemagick docbook2x
apt-get install -y libatlas-base-dev liblapack-dev gfortran python3-scipy graphviz inkscape texlive texlive-xetex texlive-fonts-recommended texlive-latex-extra lmodern librsvg2-bin imagemagick docbook2x
find_file setup.py .
open "setup.py"
create install_and_test.sh
open "install_and_test.sh"
edit '' '#!/bin/bash

# Install the project
python setup.py install

# Run the tests
python setup.py test
' True
insert '#!/bin/bash

# Install the project
python setup.py install

# Run the tests
python setup.py test
'
chmod +x install_and_test.sh
./install_and_test.sh
edit python python3 True
insert '#!/bin/bash

# Install the project
python3 setup.py install

# Run the tests
python3 setup.py test
'
edit '#!/bin/bash

# Install the project
python setup.py install

# Run the tests
python setup.py test
' '#!/bin/bash

# Install the project
python3 setup.py install

# Run the tests
python3 setup.py test
' True
insert '#!/bin/bash

# Install the project
python3 setup.py install

# Run the tests
python3 setup.py test
'
chmod +x install_and_test.sh
./install_and_test.sh
edit '#!/bin/bash' '#!/bin/bash

# Install mpmath
pip3 install mpmath
' True
insert '#!/bin/bash

# Install mpmath
pip3 install mpmath

# Install the project
python3 setup.py install

# Run the tests
python3 setup.py test
'
chmod +x install_and_test.sh
./install_and_test.sh
apt-get install -y python3-pip
edit 'pip3 install mpmath' 'pip3 install mpmath' True
insert '#!/bin/bash

# Install mpmath
pip3 install mpmath

# Install the project
python3 setup.py install

# Run the tests
python3 setup.py test
'
chmod +x install_and_test.sh
./install_and_test.sh
search_dir Mapping
open "sympy/core/basic.py"
edit 'from collections import Mapping' 'from collections.abc import Mapping'
insert 'from collections.abc import Mapping' 3
open "sympy/assumptions/sathandlers.py"
edit 'from collections import MutableMapping' 'from collections.abc import MutableMapping'
insert 'from collections.abc import MutableMapping' 3
./install_and_test.sh
open "sympy/core/basic.py"
edit 'from collections import Mapping' '' True
insert '' 4
./install_and_test.sh
edit 'from collections import Mapping' '' True
insert '' 4
./install_and_test.sh
edit 'from collections import Mapping' '' True
insert '' 4
edit 'from collections import Mapping' '' True
insert '' 4
edit 'from collections import Mapping' '' True

