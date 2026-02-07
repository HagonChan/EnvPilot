ls -la
ls -la .github/workflows
open ".github/workflows/ci.yaml"
apt-get install -y pandoc
pip install --upgrade pip wheel
apt-get install -y python3 python3-pip
apt-get update
apt-get install -y python3 python3-pip
python3 -m pip install --upgrade pip wheel
python3 -m pip install -e .[stats,docs]
make test
python3 -m pip install pytest pytest-cov
make test
python3 -m pip install pytest-xdist
make test
python3 -m pip show numpy matplotlib
python3 -m pip install numpy==1.26.4
python3 -m pip install matplotlib==3.8.0
make test
python3 -m pip show pandas
python3 -m pip install pandas==1.5.3
make test
python3 -m pip install matplotlib==3.7.0
make test
python3 -m pip install numpy==1.23.5
make test
python3 -m pip install matplotlib==3.6.0
make test
open "tests/test_regression.py"
goto 436
goto 500
goto 600
goto 684
find . -name "test_*.py" -type f
search_file test_logistic_perfect_separation tests/test_regression.py
goto 400
python3 -m pip show statsmodels
python3 -m pip install statsmodels==0.13.2
make test
