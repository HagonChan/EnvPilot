
ls -la
find_file '*.yml' .github/workflows
open ".github/workflows/nightly.yml"
apt-get update && apt-get install -y python3.11 python3.11-venv python3.11-dev
python3.11 -m venv .venv
source .venv/bin/activate && pip install -r requirements.txt
pytest keras --ignore keras/src/applications --cov=keras --cov-config=pyproject.toml
