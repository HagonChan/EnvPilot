ls -la
find_file '*.yml' .github/workflows
find_file '*.yaml' .github/workflows
open ".github/workflows/ci.yaml"
open "Makefile"
pip install --upgrade pip wheel
apt-get install -y python3-pip
apt-get update
apt-get install -y python3-pip --fix-missing
python3 -m pip install --upgrade pip wheel
pip install .[dev,stats]
make test
open "pyproject.toml"
pip install "numpy<2.0.0" --force-reinstall
make test
pip show matplotlib
pip install "matplotlib>=3.1,<3.6" --force-reinstall
pip install "numpy==1.26.4" --force-reinstall
make test
pip show pandas
pip install "pandas==1.5.3" --force-reinstall
pip install "numpy==1.26.4" --force-reinstall
make test
pip show pandas
pip install "pandas>=2.0.3" --force-reinstall
pip install "numpy==1.26.4" --force-reinstall
make test
pip show pandas
pip install "pandas==1.5.3" --force-reinstall
pip install "numpy==1.26.4" --force-reinstall
make test
pip show numpy
pip install "numpy==1.21.0" --force-reinstall
pip install "numpy==1.26.4" --force-reinstall
make test
pip install "pandas==1.5.3" --force-reinstall
pip install "numpy==1.26.4" --force-reinstall
make test
pip install "pandas==1.5.3" --force-reinstall
pip install "numpy==1.26.4" --force-reinstall
make test
pip install "pandas==1.5.3" --force-reinstall
pip install "numpy==1.26.4" --force-reinstall
make test
pip install "pandas==1.5.3" --force-reinstall
pip install "numpy==1.26.4" --force-reinstall
make test
pip install "pandas==1.5.3" --force-reinstall
pip install "numpy==1.26.4" --force-reinstall

