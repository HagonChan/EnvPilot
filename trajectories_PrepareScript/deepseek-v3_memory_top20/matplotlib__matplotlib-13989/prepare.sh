ls -la
ls -la .github/workflows
ls -la .circleci
open ".circleci/config.yml"
ls -la requirements
ls -la requirements/testing
open "requirements/testing/travis_all.txt"
sudo apt-get update && sudo apt-get install -y inkscape libav-tools dvipng pgf lmodern cm-super texlive-latex-base texlive-latex-extra texlive-fonts-recommended texlive-latex-recommended texlive-xetex graphviz libgeos-dev otf-freefont
apt-get update && apt-get install -y inkscape libav-tools dvipng pgf lmodern cm-super texlive-latex-base texlive-latex-extra texlive-fonts-recommended texlive-latex-recommended texlive-xetex graphviz libgeos-dev otf-freefont
apt-get install -y inkscape dvipng lmodern cm-super texlive-latex-base texlive-latex-extra texlive-fonts-recommended texlive-latex-recommended texlive-xetex graphviz libgeos-dev
python3 -m venv .venv && source .venv/bin/activate
apt-get install -y python3-venv
python3 -m venv .venv && source .venv/bin/activate
python -m pip install -U pip setuptools wheel
python -m pip install --default-timeout=100 -U pip setuptools wheel
python -m pip install -ve .
python -m pip install -r requirements/testing/travis_all.txt
python -m pytest --version
find . -name "test_*.py" -o -name "*_test.py"
python ./lib/matplotlib/tests/test_basic.py
python -m pip install matplotlib
python -c "import matplotlib; print(matplotlib.__version__)"
