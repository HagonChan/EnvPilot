ls -la
open ".travis.yml"
open "README.rst"
open "setup.py"
apt-get update && apt-get install -y libblas-dev liblapack-dev python3-dev build-essential
apt-get install -y python3-pip && python3 -m pip install --upgrade pip
python3 -m pip install numpy>=1.8.2 scipy>=0.13.3
python3 setup.py install
python3 -m pip install Cython
python3 setup.py install
python3 -m pip install -U scikit-learn
python3 -m pip install pytest
python3 -m pytest
python3 -c "from sklearn import datasets; print('scikit-learn is installed and functional.')"
python3 -c "import sklearn; print(sklearn.__version__)"
python3 setup.py clean --all && python3 -m pip uninstall -y scikit-learn && python3 -m pip install -U scikit-learn
python3 -c "import sklearn; print('scikit-learn version:', sklearn.__version__)"
rm -rf /testbed/sklearn && python3 -m pip install --force-reinstall scikit-learn
python3 -c "import sklearn; print('scikit-learn version:', sklearn.__version__)"
python3 -m pytest
