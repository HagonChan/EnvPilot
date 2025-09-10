ls -la
ls -la .github/workflows
open ".github/workflows/ci.yaml"
apt-get update && apt-get install -y python3.10 python3.10-venv python3.10-dev pandoc
python3.10 -m venv venv && source venv/bin/activate
pip install --upgrade pip && pip install .[dev,stats]
make test
apt-get install -y build-essential
make test
open "pyproject.toml"
pip install numpy==1.21.6
pip install matplotlib==3.5.3
make test
pip install --force-reinstall pandas==1.3.5
pip install statsmodels==0.12.2
make test
pip install numpy==1.21.6 && pip install --force-reinstall pandas==1.3.5
make test
pip uninstall -y numpy pandas && pip install numpy==1.21.6 pandas==1.3.5
make test
pip install numpy==1.23.5 pandas==1.4.4
make test
