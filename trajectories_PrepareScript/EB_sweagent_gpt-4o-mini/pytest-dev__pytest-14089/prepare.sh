
find_file '*.yml'
open "/testbed/.github/workflows/test.yml"
scroll_down
find_file tox.ini
open "/testbed/tox.ini"
find_file 'README*'
open "/testbed/README.rst"
apt update
apt install -y python3-pip python3-venv
python3 -m venv venv
source venv/bin/activate && pip install -r requirements.txt
open "/testbed/tox.ini"
pip install PyYAML exceptiongroup>=1.0.0rc8 numpy>=1.19.4 pexpect>=4.8.0 git+https://github.com/pytest-dev/pluggy.git 'twisted<25' asynctest pytest-xdist>=2.1.0
pip install PyYAML exceptiongroup>=1.0.0rc8 numpy>=1.19.4 pexpect>=4.8.0 'twisted<25' asynctest pytest-xdist>=2.1.0
tox
pip install tox
tox
