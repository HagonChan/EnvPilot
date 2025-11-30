
find_file pyproject.toml
open "/testbed/pyproject.toml"
insert '[tool.tox]
envlist = ["py37", "py38", "py39", "py310", "py311"]
' 0
apt-get update
apt-get install -y python3-pip
pip install -U tox
export PYTHONPATH=$PYTHONPATH:$(pwd)
tox
