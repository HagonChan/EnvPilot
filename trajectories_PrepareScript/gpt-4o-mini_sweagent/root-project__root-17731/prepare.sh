find_file '*.yml' .
open ".github/workflows/root-ci.yml"
goto 300
goto 500
goto 583
find_file build_root.py .github/workflows/root-ci-config
open ".github/workflows/root-ci-config/build_root.py"
search_file install .github/workflows/root-ci-config/build_root.py
search_file test .github/workflows/root-ci-config/build_root.py
find_file requirements.txt .
open "requirements.txt"
find_file setup.py .
create install_packages.py
insert 'import subprocess
import sys

with open('"'"'requirements.txt'"'"') as f:
    packages = f.readlines()

for package in packages:
    package = package.strip()
    if package and not package.startswith('"'"'#'"'"'):
        subprocess.check_call([sys.executable, '"'"'-m'"'"', '"'"'pip'"'"', '"'"'install'"'"', package])' 1

