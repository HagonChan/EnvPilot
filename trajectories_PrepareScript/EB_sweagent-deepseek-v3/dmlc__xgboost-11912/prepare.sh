ls -la
ls -la .github/workflows
open ".github/workflows/python_tests.yml"
open "ops/conda_env/sdist_test.yml"
open "ops/pipeline/test-python-sdist.sh"
ls -la python-package
conda --version
wget -O Miniforge3.sh "https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-$(uname)-$(uname -m).sh" && bash Miniforge3.sh -b
curl -L -o Miniforge3.sh "https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-$(uname)-$(uname -m).sh" && bash Miniforge3.sh -b
apt-get update && apt-get install -y curl
apt-get clean
apt-get install -y curl
df -h
du -sh * | sort -rh | head -n 10
find /tmp -type f -exec du -h {} + 2>/dev/null | sort -rh | head -n 10
find /var/log -type f -exec du -h {} + 2>/dev/null | sort -rh | head -n 10
apt-get autoremove -y
rm -rf /var/cache/apt/archives/*
apt-get install -y curl
df -h
ls -la | grep -i Makefile
ls -la python-package | grep -i build
open "python-package/hatch_build.py"
open "python-package/pyproject.toml"
python3 --version
python --version
