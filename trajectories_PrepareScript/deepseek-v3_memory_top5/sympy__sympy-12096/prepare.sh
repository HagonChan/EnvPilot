ls -la
open ".travis.yml"
open "setup.py"
open "tox.ini.sample"
apt-get install -y python3.11 python3.11-venv python3.11-dev && python3.11 -m venv venv
source venv/bin/activate && apt-get install -y python3-dev python3-pip build-essential
apt-get update && apt-get install -y python3-dev python3-pip build-essential
pip install -e .
pytest
pip install pytest
pytest
open "sympy/core/basic.py"
edit 'from collections import Mapping' 'from collections.abc import Mapping'
pytest
open "sympy/plotting/plot.py"
edit 'from collections import Callable' 'from collections.abc import Callable'
pytest
search_dir 'from collections import Callable'
apt-get install -y python3.10 python3.10-venv python3.10-dev && python3.10 -m venv venv
source venv/bin/activate && apt-get install -y python3-dev python3-pip build-essential
pip install -e .
pytest
search_dir 'from collections import Callable'
apt-get install -y python3.10 python3.10-venv python3.10-dev && python3.10 -m venv venv
source venv/bin/activate && apt-get install -y python3-dev python3-pip build-essential
pip install -e .
pytest
search_dir 'from collections import Callable'
apt-get install -y python3.10 python3.10-venv python3.10-dev && python3.10 -m venv venv
source venv/bin/activate && apt-get install -y python3-dev python3-pip build-essential
pip install -e .
pytest
search_dir 'from collections import Callable'
apt-get install -y python3.10 python3.10-venv python3.10-dev && python3.10 -m venv venv
source venv/bin/activate && apt-get install -y python3-dev python3-pip build-essential
pip install -e .
pytest
search_dir 'from collections import Callable'
apt-get install -y python3.10 python3.10-venv python3.10-dev && python3.10 -m venv venv
source venv/bin/activate && apt-get install -y python3-dev python3-pip build-essential
pip install -e .
pytest
search_dir 'from collections import Callable'
apt-get install -y python3.10 python3.10-venv python3.10-dev && python3.10 -m venv venv
source venv/bin/activate && apt-get install -y python3-dev python3-pip build-essential
pip install -e .
pytest
search_dir 'from collections import Callable'
apt-get install -y python3.10 python3.10-venv python3.10-dev && python3.10 -m venv venv

