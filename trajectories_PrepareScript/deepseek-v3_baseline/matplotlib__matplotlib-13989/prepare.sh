ls -la
ls -la .github/workflows
ls -la .circleci
open ".circleci/config.yml"
open "requirements/doc/doc-requirements.txt"
open "setup.py"
open "README.rst"
open "INSTALL.rst"
sudo apt-get update && sudo apt-get install -y inkscape libav-tools dvipng pgf lmodern cm-super texlive-latex-base texlive-latex-extra texlive-fonts-recommended texlive-latex-recommended texlive-xetex graphviz libgeos-dev otf-freefont
apt-get update && apt-get install -y inkscape libav-tools dvipng pgf lmodern cm-super texlive-latex-base texlive-latex-extra texlive-fonts-recommended texlive-latex-recommended texlive-xetex graphviz libgeos-dev otf-freefont
apt-get install -y inkscape dvipng lmodern cm-super texlive-latex-base texlive-latex-extra texlive-fonts-recommended texlive-latex-recommended texlive-xetex graphviz libgeos-dev
python -m pip install --upgrade pip setuptools wheel
python3 -m pip install --upgrade pip setuptools wheel
apt-get install -y python3-pip
python3 -m pip install --upgrade pip setuptools wheel
python3 -m pip install numpy codecov coverage
python3 -m pip install -r requirements/doc/doc-requirements.txt
python3 -mpip install --user -ve .
python3 -mpip install --use-pep517 --user -e .
apt-get install -y libfreetype6-dev
python3 -mpip install --use-pep517 --user -e .
find /usr -name ft2build.h
CFLAGS="-I/usr/include/freetype2" python3 -mpip install --use-pep517 --user -e .
CFLAGS="-I/usr/include/freetype2" CXXFLAGS="-I/usr/include/freetype2" python3 -mpip install --use-pep517 --user -e .
python3 -m pytest
python3 -m pip install pytest
python3 -m pytest
python3 -c "import matplotlib; matplotlib.test()"
python3 -c "import matplotlib.pyplot as plt; plt.plot([1, 2, 3], [4, 5, 6]); plt.savefig('test.png'); print('Matplotlib installed and working!')"
python3 -c "import matplotlib.pyplot as plt; plt.plot([1, 2, 3], [4, 5, 6]); plt.savefig('test.png'); print('Matplotlib installed and working!')"
python3 -c 'import matplotlib.pyplot as plt; plt.plot([1, 2, 3], [4, 5, 6]); plt.savefig("test.png"); print("Matplotlib installed and working!")'
