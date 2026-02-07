ls -la
ls -la .github/workflows
open ".github/workflows/main.yml"
apt-get update && apt-get install -y graphviz
python -m pip install -U pip tox
apt-get update && apt-get install -y python3 python3-pip
python3 -m pip install -U tox
open "tox.ini"
python3 -m pip install -e .
tox -e py310
python3 -m pip install -U sphinxcontrib-applehelp
python3 -m pip show alabaster
python3 -m pip install -U alabaster
python3 -m pip install alabaster==0.7.16
tox -e py310
open "setup.py"
python3 -m pip install -U sphinxcontrib-applehelp
open "tests/test_config.py"
grep -r "sphinxcontrib.applehelp" tests/
python3 -m pip install sphinxcontrib-applehelp==1.0.0
tox -e py310
python3 -m pip install -U alabaster
python3 -m pip install alabaster==0.7.16
open "tests/test_theming.py"
edit 'if alabaster.version.__version_info__ >= (0, 7, 11):' 'if hasattr(alabaster, '"'"'version'"'"') and alabaster.version.__version_info__ >= (0, 7, 11):' False
tox -e py310
open "setup.py"
python3 -m pip install -U sphinxcontrib-applehelp
open "tests/test_config.py"
python3 -m pip install sphinxcontrib-applehelp==1.0.0
tox -e py310
open "setup.py"
python3 -m pip install -U sphinxcontrib-applehelp
open "tests/test_config.py"
python3 -m pip install sphinxcontrib-applehelp==1.0.0
tox -e py310
open "setup.py"
python3 -m pip install -U sphinxcontrib-applehelp
open "tests/test_config.py"
python3 -m pip install sphinxcontrib-applehelp==1.0.0
tox -e py310
open "setup.py"
python3 -m pip install -U sphinxcontrib-applehelp
open "tests/test_config.py"
python3 -m pip install sphinxcontrib-applehelp==1.0.0
tox -e py310
open "setup.py"
python3 -m pip install -U sphinxcontrib-applehelp
open "tests/test_config.py"

