ls -la
ls -la .github/workflows
open ".github/workflows/main.yml"
apt-get update && apt-get install -y graphviz
apt-get update && apt-get install -y python3 python3-pip
python3 -m pip install -U tox
tox
python3 -m pip install sphinxcontrib-applehelp alabaster
python3 -m pip install babel docutils imagesize Jinja2 Pygments requests snowballstemmer sphinxcontrib-devhelp sphinxcontrib-htmlhelp sphinxcontrib-jsmath sphinxcontrib-qthelp sphinxcontrib-serializinghtml
python3 -m pip install 'alabaster<0.8,>=0.7' 'docutils<0.20,>=0.14'
tox
python3 -m pip install 'sphinxcontrib-applehelp==1.0.4' 'alabaster==0.7.12'
tox
