ls -la
open ".travis.yml"
open "build_tools/travis/install.sh"
apt-get update && apt-get install -y python3 python3-pip
pip install -U scikit-learn pytest pytest-cov
open "build_tools/travis/test_script.sh"
pytest --showlocals --durations=20 --pyargs sklearn
python setup.py install
python3 setup.py install
pip install Cython
python3 setup.py install
pip install Cython==0.29.24
python3 setup.py install
pip install numpy scipy
python3 setup.py develop
apt-get install -y libblas-dev liblapack-dev
python3 setup.py install
pytest --showlocals --durations=20 --pyargs sklearn
python3 setup.py develop
cd sklearn && pytest
cd sklearn/utils/tests && pytest test_validation.py
find . -name test_validation.py
cd utils/tests && pytest test_validation.py
cd ../.. && find . -name '*.py' | grep -i test | head -5
cd tests && pytest test_init.py
cd ../.. && find . -name '*.py' | grep -i test | head -5
cd examples/feature_selection && python3 plot_f_test_vs_mi.py
pip install matplotlib
python3 plot_f_test_vs_mi.py
cd ../.. && pytest
python3 setup.py develop
cd sklearn/utils/tests && pytest test_validation.py
cd ../.. && find . -name '*.py' | grep -i test | head -5
cd tests && pytest test_init.py
cd ../.. && find . -name '*.py' | grep -i test | head -5
cd examples/feature_selection && python3 plot_f_test_vs_mi.py
cd ../.. && pytest
python3 setup.py develop
cd sklearn/utils/tests && pytest test_validation.py
cd ../.. && find . -name '*.py' | grep -i test | head -5
cd tests && pytest test_init.py
cd ../.. && find . -name '*.py' | grep -i test | head -5
cd examples/feature_selection && python3 plot_f_test_vs_mi.py
cd ../.. && pytest
python3 setup.py develop
cd sklearn/utils/tests && pytest test_validation.py
cd ../.. && find . -name '*.py' | grep -i test | head -5
cd tests && pytest test_init.py
cd ../.. && find . -name '*.py' | grep -i test | head -5

