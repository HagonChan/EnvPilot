ls -la
open ".circleci/config.yml"
open "tox.ini"
pip install tox
apt-get install -y python3-pip
apt-get update
apt-get install -y python3-pip
pip --version
pip install tox
tox --version
tox
pip install sphinxcontrib-applehelp alabaster
pip uninstall -y alabaster && pip install 'alabaster>=0.7,<0.8'
pip install 'babel>=2.9' 'docutils<0.20,>=0.14' 'imagesize>=1.3' 'Jinja2>=3.0' 'Pygments>=2.12' 'requests>=2.5.0' 'snowballstemmer>=2.0' sphinxcontrib-devhelp 'sphinxcontrib-htmlhelp>=2.0.0' sphinxcontrib-jsmath sphinxcontrib-qthelp 'sphinxcontrib-serializinghtml>=1.1.5'
tox
pip show alabaster sphinxcontrib-applehelp
pip install --force-reinstall sphinxcontrib-applehelp
tox
apt-get install -y python3.11 python3.11-venv python3.11-dev && python3.11 -m venv venv
source venv/bin/activate
pip install tox
pip install 'alabaster>=0.7,<0.8' 'babel>=2.9' 'docutils<0.20,>=0.14' 'imagesize>=1.3' 'Jinja2>=3.0' 'Pygments>=2.12' 'requests>=2.5.0' 'snowballstemmer>=2.0' sphinxcontrib-applehelp sphinxcontrib-devhelp 'sphinxcontrib-htmlhelp>=2.0.0' sphinxcontrib-jsmath sphinxcontrib-qthelp 'sphinxcontrib-serializinghtml>=1.1.5'
tox
