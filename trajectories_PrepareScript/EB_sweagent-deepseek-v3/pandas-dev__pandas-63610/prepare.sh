ls -la
ls -la .github/workflows
open ".github/workflows/unit-tests.yml"
ls -la .github
ls -la .github/actions
ls -la .github/actions/setup-conda
ls -la .github/*.yaml
ls -la *.yaml
search_file env_file .github/workflows/unit-tests.yml
ls -la ci/deps
open "ci/deps/actions-313.yaml"
open "pyproject.toml"
open "README.md"
conda env create -f ci/deps/actions-313.yaml
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O miniconda.sh && bash miniconda.sh -b -p $HOME/miniconda && export PATH=$HOME/miniconda/bin:$PATH
curl -o miniconda.sh https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh && bash miniconda.sh -b -p $HOME/miniconda && export PATH=$HOME/miniconda/bin:$PATH
apt update
apt install -y curl wget
curl -o miniconda.sh https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh && bash miniconda.sh -b -p $HOME/miniconda && export PATH=$HOME/miniconda/bin:$PATH
conda --version
conda env create -f ci/deps/actions-313.yaml
open "ci/deps/actions-313.yaml"
conda create -n pandas-dev-313 python=3.13 -y
conda tos accept --override-channels --channel https://repo.anaconda.com/pkgs/main
conda tos accept --override-channels --channel https://repo.anaconda.com/pkgs/r
conda create -n pandas-dev-313 python=3.13 -y
conda config --set ssl_verify false && conda create -n pandas-dev-313 python=3.13 -y
conda activate pandas-dev-313

