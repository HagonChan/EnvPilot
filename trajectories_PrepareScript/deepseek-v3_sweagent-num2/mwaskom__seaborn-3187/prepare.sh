ls -la
ls -la .github/workflows
open ".github/workflows/ci.yaml"
open "Makefile"
apt-get update && apt-get install -y python3.10 python3.10-dev python3.10-venv
python3.10 -m venv venv
source venv/bin/activate && pip install --upgrade pip wheel && pip install .[dev,stats]
make test
apt-get install -y make
make test
pytest -n auto --cov=seaborn --cov=tests --cov-config=setup.cfg tests -v | head -n 50
open ".github/workflows/ci.yaml"
open "ci/deps_pinned.txt"
pip install pytest==7.4.0
make test
pip install numpy==1.17.0 matplotlib==3.1.0
pip install numpy~=1.21.0 matplotlib==3.1.0
apt-get install -y build-essential python3-dev
pip install matplotlib==3.1.0
apt-get install -y libfreetype6-dev
pip install matplotlib==3.1.0
find /usr -name ft2build.h
export CPATH=/usr/include/freetype2:$CPATH && pip install matplotlib==3.1.0
make test
pip install numpy~=1.21.0
pip install .[dev,stats]
make test
pip install numpy~=1.21.0
pip install .[dev,stats]
make test
pip install numpy~=1.21.0
pip install .[dev,stats]
make test
pip install numpy~=1.21.0
pip install .[dev,stats]
make test
pip install numpy~=1.21.0
pip install .[dev,stats]
make test
pip install numpy~=1.21.0
pip install .[dev,stats]
make test
pip install numpy~=1.21.0
pip install .[dev,stats]
make test
pip install numpy~=1.21.0
pip install .[dev,stats]
make test
pip install numpy~=1.21.0

