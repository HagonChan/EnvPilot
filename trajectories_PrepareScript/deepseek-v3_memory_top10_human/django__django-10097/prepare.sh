ls -la
open "README.rst"
open "docs/intro/install.txt"
open "docs/internals/contributing/writing-code/unit-tests.txt"
apt-get update && apt-get install -y gcc g++ cmake make libssl-dev libyaml-dev
cd tests && pip install -e ..
apt-get install -y python3-pip
pip install -e ..
ls requirements
pip install -r requirements/py3.txt
./runtests.py
open "runtests.py"
edit '#!/usr/bin/env python' '#!/usr/bin/env python3' False
./runtests.py
pip install -e ..
./runtests.py
search_file paginator_number runtests.py
search_dir paginator_number ../django
pip show Django
./runtests.py --parallel=1
cat /etc/timezone
echo "UTC" > /etc/timezone && dpkg-reconfigure -f noninteractive tzdata
apt-get install -y tzdata && echo "UTC" > /etc/timezone && dpkg-reconfigure -f noninteractive tzdata
./runtests.py --parallel=1
