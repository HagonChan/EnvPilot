ls -la
open "tox.ini"
open "setup.py"
ls -la .github/workflows
open ".github/workflows/main.yml"
apt-get update && apt-get install -y graphviz
python3 --version && python3 -m pip --version
apt-get install -y python3 python3-pip
python3 --version && python3 -m pip --version
python3 -m pip install -U tox
tox --version
export PYTHONPATH=$PYTHONPATH:$(pwd)
tox
python3 -m pip install sphinxcontrib-applehelp sphinxcontrib-devhelp sphinxcontrib-htmlhelp sphinxcontrib-qthelp sphinxcontrib-serializinghtml sphinxcontrib-websupport
tox
python3 -m pip show sphinxcontrib-applehelp sphinxcontrib-devhelp sphinxcontrib-htmlhelp sphinxcontrib-qthelp sphinxcontrib-serializinghtml sphinxcontrib-websupport alabaster
python3 -m pip install --force-reinstall alabaster
python3 -m pip install --force-reinstall alabaster==0.7.16
tox

python3 -m pip install --force-reinstall sphinxcontrib-applehelp sphinxcontrib-devhelp sphinxcontrib-htmlhelp sphinxcontrib-qthelp sphinxcontrib-serializinghtml sphinxcontrib-websupport
python3 -m pip install --force-reinstall alabaster==0.7.16
python3 -m pip install --force-reinstall docutils==0.19
tox
python3 -m pip show sphinxcontrib-applehelp sphinxcontrib-devhelp sphinxcontrib-htmlhelp sphinxcontrib-qthelp sphinxcontrib-serializinghtml sphinxcontrib-websupport alabaster
python3 -m pip install --force-reinstall alabaster
python3 -m pip install --force-reinstall alabaster==0.7.16
python3 -m pip install --force-reinstall docutils==0.19
tox
python3 -m pip show sphinxcontrib-applehelp sphinxcontrib-devhelp sphinxcontrib-htmlhelp sphinxcontrib-qthelp sphinxcontrib-serializinghtml sphinxcontrib-websupport alabaster
python3 -m pip install --force-reinstall alabaster
python3 -m pip install --force-reinstall alabaster==0.7.16
python3 -m pip install --force-reinstall docutils==0.19
tox
python3 -m pip show sphinxcontrib-applehelp sphinxcontrib-devhelp sphinxcontrib-htmlhelp sphinxcontrib-qthelp sphinxcontrib-serializinghtml sphinxcontrib-websupport alabaster
python3 -m pip install --force-reinstall alabaster
python3 -m pip install --force-reinstall alabaster==0.7.16
python3 -m pip install --force-reinstall docutils==0.19
tox
python3 -m pip show sphinxcontrib-applehelp sphinxcontrib-devhelp sphinxcontrib-htmlhelp sphinxcontrib-qthelp sphinxcontrib-serializinghtml sphinxcontrib-websupport alabaster
python3 -m pip install --force-reinstall alabaster
python3 -m pip install --force-reinstall alabaster==0.7.16
python3 -m pip install --force-reinstall docutils==0.19
tox
python3 -m pip show sphinxcontrib-applehelp sphinxcontrib-devhelp sphinxcontrib-htmlhelp sphinxcontrib-qthelp sphinxcontrib-serializinghtml sphinxcontrib-websupport alabaster
python3 -m pip install --force-reinstall alabaster
python3 -m pip install --force-reinstall alabaster==0.7.16
python3 -m pip install --force-reinstall docutils==0.19
tox

