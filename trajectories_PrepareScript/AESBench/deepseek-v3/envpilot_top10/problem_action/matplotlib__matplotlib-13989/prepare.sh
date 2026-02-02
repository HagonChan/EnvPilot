ls -la
ls -la .github/workflows
ls -la .circleci
open ".circleci/config.yml"
ls -la requirements
ls -la requirements/testing
open "requirements/testing/travis_all.txt"
apt-get update && apt-get install -y python3-pip python3-dev build-essential
python3 --version && pip3 --version
apt-get install -y python3
python3 --version && pip3 --version
apt-get install -y python3-pip
pip3 --version
python3 -m pip install --upgrade pip
python3 -m venv .venv
apt-get install -y python3.10-venv
python3 -m venv .venv
. .venv/bin/activate && pip install -r requirements/testing/travis_all.txt
. .venv/bin/activate && python -mpip install --user -ve .
. .venv/bin/activate && python -mpip install -ve .
apt-get install -y libfreetype6-dev libpng-dev libjpeg-dev
. .venv/bin/activate && python -mpip install -ve .
apt-get install -y pkg-config
pkg-config --cflags freetype2
. .venv/bin/activate && python -mpip install -ve .
. .venv/bin/activate && python -m pytest

