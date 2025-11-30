find_file '*.yml' .
open ".circleci/config.yml"
find_file '*requirements*.txt' .
open "/testbed/build_tools/appveyor/requirements.txt"
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O miniconda.sh && bash miniconda.sh -b -p $HOME/miniconda
curl -L -o miniconda.sh https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh && bash miniconda.sh -b -p $HOME/miniconda
python -c 'import urllib.request; urllib.request.urlretrieve("https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh", "miniconda.sh")' && bash miniconda.sh -b -p $HOME/miniconda
which conda
find_file setup.py .
open "/testbed/setup.py"
ls /usr/bin/python*
find_file 'README*' .
open "/testbed/README.rst"
ls /usr/bin/ | grep python
find_file 'test_*.py' .
ls /usr/bin/ | grep pytest
