ls -la
ls -la .github/workflows
ls -la .circleci
open ".circleci/config.yml"
sudo apt-get -qq update && sudo apt-get install -y inkscape libav-tools dvipng pgf lmodern cm-super texlive-latex-base texlive-latex-extra texlive-fonts-recommended texlive-latex-recommended texlive-xetex graphviz libgeos-dev otf-freefont
apt-get -qq update && apt-get install -y inkscape libav-tools dvipng pgf lmodern cm-super texlive-latex-base texlive-latex-extra texlive-fonts-recommended texlive-latex-recommended texlive-xetex graphviz libgeos-dev otf-freefont
apt-get -qq update && apt-get install -y inkscape dvipng lmodern cm-super texlive-latex-base texlive-latex-extra texlive-fonts-recommended texlive-latex-recommended texlive-xetex graphviz libgeos-dev
python -mpip install --upgrade --user pip setuptools wheel
python3 -mpip install --upgrade --user pip setuptools wheel
apt-get install -y python3-pip
python3 -mpip install --upgrade --user pip setuptools wheel
pip install -ve .
pip install --use-pep517 -ve .
apt-get install -y libfreetype6-dev
pip install --use-pep517 -ve .
dpkg -L libfreetype6-dev | grep ft2build.h
apt-get install --reinstall -y libfreetype6-dev
dpkg -L libfreetype6-dev | grep ft2build.h
find /usr -name ft2build.h
export CPATH=/usr/include/freetype2:$CPATH
pip install --use-pep517 -ve .
pytest
pip install pytest
pytest
ls -la | grep pytest.ini || ls -la | grep tox.ini
open "pytest.ini"
ls -la lib | grep test_
find . -name "test_*.py"
pytest lib/matplotlib/tests/test_basic.py -v
