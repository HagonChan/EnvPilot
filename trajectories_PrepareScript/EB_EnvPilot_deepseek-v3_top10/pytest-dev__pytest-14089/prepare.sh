ls
open "pyproject.toml"
open "tox.ini"
python3 --version
apt-get update && apt-get install -y python3.11 python3.11-venv python3.11-dev
python3.11 --version && python3.11 -m pip --version
python3.11 -m ensurepip --upgrade
apt-get install -y python3.11-pip
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && python3.11 get-pip.py
apt-get install -y curl
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && python3.11 get-pip.py
python3.11 -m pip --version && python3.11 -m pip install -U tox
python3.11 -m tox --version
python3.11 -m tox -e py311
open "testing/test_skipping.py"
goto 300
python3.11 -m pytest testing/test_skipping.py::TestXFail::test_xfail_using_platform -v
python3.11 -m tox -e py311 -- testing/test_skipping.py::TestXFail::test_xfail_using_platform -v
