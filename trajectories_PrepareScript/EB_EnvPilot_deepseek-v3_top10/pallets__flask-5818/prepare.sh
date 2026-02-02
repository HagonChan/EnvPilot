ls
open "pyproject.toml"
open "README.md"
find_file tox.ini
find_file '.github/workflows/*.yml'
find_file setup.py
find_file Makefile
pip install -U tox
apt-get install -y python3-pip
apt-get clean
apt-get install -y python3-pip
apt-get autoremove -y
python3 -m pip install -U tox
apt-get install -y python3.10
python3.10 -m pip install -U tox
apt-get install -y python3-pip
apt-get update
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 3B4FE6ACC0B21F32
apt-get install -y gnupg
apt-get clean
apt-get install -y gnupg
df -h
du -sh /var/log/* | sort -rh | head -10
du -sh /* | sort -rh | head -10
nix-collect-garbage

