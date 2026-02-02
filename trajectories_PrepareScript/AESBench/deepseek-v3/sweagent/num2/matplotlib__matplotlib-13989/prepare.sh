ls -la
ls -la .github/workflows
ls -la .circleci
open ".circleci/config.yml"
ls -la requirements
ls -la requirements/testing
open "requirements/testing/travis_all.txt"
ls -la setup.py pyproject.toml
open "setup.py"
ls -la README*
open "README.rst"
ls -la INSTALL*
open "INSTALL.rst"
sudo apt-get update && sudo apt-get install -y inkscape libav-tools dvipng ghostscript imagemagick ffmpeg
apt-get update && apt-get install -y inkscape libav-tools dvipng ghostscript imagemagick ffmpeg
apt-get install -y inkscape dvipng ghostscript imagemagick ffmpeg
python -m pip install --upgrade pip setuptools wheel
python3 -m pip install --upgrade pip setuptools wheel
apt-get install -y python3-pip
python3 -m pip install --upgrade pip setuptools wheel
python3 -m pip install -r requirements/testing/travis_all.txt
python3 -m pip install --user -ve .
apt-get install -y libfreetype6-dev
python3 -m pip install --user -ve .
apt-get install -y pkg-config
pkg-config --modversion freetype2
python3 -m pip install --user -ve .
python3 -m pytest
python3 -m pytest lib/matplotlib/tests/test_simplification.py
python3 -m pytest lib/matplotlib/tests/test_units.py
open "setup.cfg"
ls -la lib/matplotlib
python3 -m pytest lib/matplotlib/tests/test_basic.py
