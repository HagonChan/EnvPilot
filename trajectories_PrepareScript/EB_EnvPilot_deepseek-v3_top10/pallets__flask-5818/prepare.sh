ls
open "pyproject.toml"
open "README.md"
ls -a
ls .github/workflows
open ".github/workflows/tests.yaml"
apt-get update && apt-get install -y build-essential python3-dev
curl -sSf https://astral.sh/uv/install.sh | sh
apt-get install -y curl
curl -sSf https://astral.sh/uv/install.sh | sh
uv pip install -e .
ls ~/.cargo/bin
find / -name uv 2>/dev/null
export PATH=$PATH:/nix/store/0i9crfaqc17w39q2kxxf62fbrjaywgbp-uv-0.4.30/bin
uv pip install -e .
uv venv
source .venv/bin/activate && uv pip install -e .
tox -l
uv pip install tox
tox -l
ls
uv run --locked tox run -e py310
