find_file '*.yml' .
open ".github/workflows/release.yml"
open ".github/workflows/codeql-analysis.yml"
find_file requirements.txt .
open "doc/requirements.txt"
find_file setup.py .
open "setup.py"
apt update
pip install -r doc/requirements.txt
apt install python3-pip
apt update && apt install -y python3-pip
pip3 install -r doc/requirements.txt
pip3 install -e .
find_file 'test*' .
search_dir pytest tests
pytest
pip3 install pytest
pytest
pip3 install py
pytest
