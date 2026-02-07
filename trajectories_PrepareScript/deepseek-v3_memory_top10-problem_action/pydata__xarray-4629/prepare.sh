ls -la
ls -la .github/workflows
open ".github/workflows/upstream-dev-ci.yaml"
open "ci/requirements/py38.yml"
apt-get update && apt-get install -y python3.8 python3.8-venv python3.8-dev
apt-get update && apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev python-openssl git
git clone https://github.com/pyenv/pyenv.git ~/.pyenv

