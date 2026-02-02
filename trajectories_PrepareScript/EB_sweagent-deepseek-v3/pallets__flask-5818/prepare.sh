ls -la
ls -la .github/workflows
open ".github/workflows/tests.yaml"
open "pyproject.toml"
pip install uv tox
apt-get update && apt-get install -y python3-pip
pip install uv tox
pip install --default-timeout=1000 uv tox
uv pip install -e .
uv venv
source .venv/bin/activate && uv pip install -e .
tox
find_file tox.ini
search_file '[tool.tox]' pyproject.toml
pytest -v --tb=short
uv pip install pytest
pytest -v --tb=short
uv pip install -e .[async]
pytest -v --tb=short
