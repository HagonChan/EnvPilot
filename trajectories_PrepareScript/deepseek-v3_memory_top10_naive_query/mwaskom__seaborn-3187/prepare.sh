ls -la
ls -la .github/workflows
open ".github/workflows/ci.yaml"
apt-get update && apt-get install -y python3.10 python3-pip
apt-get install -y pandoc
pip install --upgrade pip wheel
pip install .[dev]
make test
pip show numpy matplotlib pandas seaborn
pip install numpy<2.0.0
pip install "numpy<2.0.0"
make test
pip install "matplotlib<4.0.0"
pip install "matplotlib<3.0.0"
apt-get install -y libfreetype-dev libpng-dev
pip install "matplotlib<3.0.0"
pip install matplotlib==3.5.0
make test
pip install numpy==1.23.5
make test
open "setup.py"
open "pyproject.toml"
pip install pandas<2.0.0
pip install "pandas<2.0.0"
make test
