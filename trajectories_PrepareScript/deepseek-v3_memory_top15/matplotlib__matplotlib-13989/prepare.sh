ls -la
ls -la .github/workflows
ls -la .circleci
open ".circleci/config.yml"
sudo apt-get -qq update && sudo apt-get install -y inkscape libav-tools dvipng pgf lmodern cm-super texlive-latex-base texlive-latex-extra texlive-fonts-recommended texlive-latex-recommended texlive-xetex graphviz libgeos-dev otf-freefont
apt-get -qq update && apt-get install -y inkscape libav-tools dvipng pgf lmodern cm-super texlive-latex-base texlive-latex-extra texlive-fonts-recommended texlive-latex-recommended texlive-xetex graphviz libgeos-dev otf-freefont
python -mpip install --upgrade --user pip setuptools wheel
apt-get install -y python3
python3 -mpip install --upgrade --user pip setuptools wheel
apt-get install -y python3-pip
python3 -mpip install --upgrade --user pip setuptools wheel
export PATH=$PATH:/root/.local/bin
python3 -mpip install numpy codecov coverage
python3 -mpip install -ve .
python3 -mpip install --use-pep517 -ve .
apt-get update && apt-get install -y build-essential python3-dev libfreetype6-dev
python3 -mpip install --use-pep517 -ve .
find /usr -name ft2build.h
export CPPFLAGS="-I/usr/include/freetype2" && python3 -mpip install --use-pep517 -ve .
pytest -rA --tb=no -p no:cacheprovider
ls -la test-requirements.txt
python3 -mpip install pytest
pytest -rA --tb=no -p no:cacheprovider
