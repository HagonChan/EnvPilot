
ls -R
open "azure-pipelines.yml"
open "setup.py"
open "tox.ini"
apt-get install -y python3-pip
apt-get update
apt-get install -y python3-pip
python3 -m venv .venv
apt-get install -y python3.10-venv
python3 -m venv .venv
insert '#!/bin/bash
source .venv/bin/activate
pip install -e .
' 0
bash install_dependencies.sh
insert '#!/bin/bash
source .venv/bin/activate
pip install -e .
' 0
bash install_dependencies.sh
insert '#!/bin/bash
source .venv/bin/activate
pip install -e .
' 0
create install_dependencies.sh
insert '#!/bin/bash
source .venv/bin/activate
pip install -e .
' 0
bash install_dependencies.sh
.venv/bin/pytest
open "tox.ini"
edit '#!/bin/bash
source .venv/bin/activate
pip install -e .
' '' True
.venv/bin/pytest
.venv/bin/pip install pytest==6.2.5
.venv/bin/pytest
open "tox.ini"
edit 'commands =' 'commands =
    -W ignore::pytest.RemovedInPytest4Warning' True
.venv/bin/pytest
edit '-W ignore::pytest.RemovedInPytest4Warning' '' True
.venv/bin/pytest
python3.7 -m venv .venv37
ls /usr/bin/python*
python3.10 -m venv .venv310
create install_dependencies_310.sh
insert '#!/bin/bash
source .venv310/bin/activate
pip install -e .
' 0
bash install_dependencies_310.sh
.venv310/bin/pytest
.venv310/bin/pip install pytest==6.2.5
.venv310/bin/pytest
.venv310/bin/pytest -W ignore
.venv310/bin/pytest -W ignore
.venv310/bin/pytest -W ignore
.venv310/bin/pytest -W ignore
.venv310/bin/pytest -W ignore
.venv310/bin/pytest -W ignore
.venv310/bin/pytest -W ignore
.venv310/bin/pytest -W ignore
.venv310/bin/pytest -W ignore
.venv310/bin/pytest -W ignore

