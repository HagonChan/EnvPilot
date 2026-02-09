ls -la
open ".travis.yml"
open "Makefile"
open "requirements.txt"
apt-get update && apt-get install -y python3-pip
pip install pytest sphinx requests
make test
open "setup.py"
pip install --upgrade requests
apt-get install -y python3.3 python3.3-venv
pip install --upgrade requests --force-reinstall
pip show requests
open "/usr/local/lib/python3.10/dist-packages/requests/packages/__init__.py"
grep -r "MutableMapping" /usr/local/lib/python3.10/dist-packages/requests
open "/usr/local/lib/python3.10/dist-packages/requests/compat.py"
grep -r "from collections import MutableMapping" /usr/local/lib/python3.10/dist-packages/requests
grep -r "from collections import MutableMapping" .
open "./requests/packages/urllib3/_collections.py"
edit 'from collections import MutableMapping' 'from collections.abc import MutableMapping'
make test
grep -r "collections.MutableMapping" /usr/local/lib/python3.10/dist-packages/requests
open "test_requests.py"
pip install requests==2.22.0
make test
grep -r "collections.MutableMapping" /usr/local/lib/python3.10/dist-packages/requests
find /usr/local/lib/python3.10/dist-packages/requests -type f -name "*.py" -exec grep -l "collections.MutableMapping" {} \;
find /usr/local/lib/python3.10/dist-packages/requests -type f -name "*.py" -exec grep -l "from collections import MutableMapping" {} \;
find /usr/local/lib/python3.10/dist-packages/requests -type f -name "*.py" -exec grep -l "collections.MutableMapping" {} \;
find /usr/local/lib/python3.10/dist-packages/requests -type f -name "*.py" -exec grep -l "from collections import MutableMapping" {} \;
find /usr/local/lib/python3.10/dist-packages/requests -type f -name "*.py" -exec grep -l "collections.MutableMapping" {} \;
find /usr/local/lib/python3.10/dist-packages/requests -type f -name "*.py" -exec grep -l "from collections import MutableMapping" {} \;
find /usr/local/lib/python3.10/dist-packages/requests -type f -name "*.py" -exec grep -l "collections.MutableMapping" {} \;
find /usr/local/lib/python3.10/dist-packages/requests -type f -name "*.py" -exec grep -l "from collections import MutableMapping" {} \;
find /usr/local/lib/python3.10/dist-packages/requests -type f -name "*.py" -exec grep -l "collections.MutableMapping" {} \;
find /usr/local/lib/python3.10/dist-packages/requests -type f -name "*.py" -exec grep -l "from collections import MutableMapping" {} \;
find /usr/local/lib/python3.10/dist-packages/requests -type f -name "*.py" -exec grep -l "collections.MutableMapping" {} \;
find /usr/local/lib/python3.10/dist-packages/requests -type f -name "*.py" -exec grep -l "from collections import MutableMapping" {} \;
find /usr/local/lib/python3.10/dist-packages/requests -type f -name "*.py" -exec grep -l "collections.MutableMapping" {} \;
find /usr/local/lib/python3.10/dist-packages/requests -type f -name "*.py" -exec grep -l "from collections import MutableMapping" {} \;
find /usr/local/lib/python3.10/dist-packages/requests -type f -name "*.py" -exec grep -l "collections.MutableMapping" {} \;
find /usr/local/lib/python3.10/dist-packages/requests -type f -name "*.py" -exec grep -l "from collections import MutableMapping" {} \;
find /usr/local/lib/python3.10/dist-packages/requests -type f -name "*.py" -exec grep -l "collections.MutableMapping" {} \;
find /usr/local/lib/python3.10/dist-packages/requests -type f -name "*.py" -exec grep -l "from collections import MutableMapping" {} \;
find /usr/local/lib/python3.10/dist-packages/requests -type f -name "*.py" -exec grep -l "collections.MutableMapping" {} \;
find /usr/local/lib/python3.10/dist-packages/requests -type f -name "*.py" -exec grep -l "from collections import MutableMapping" {} \;
find /usr/local/lib/python3.10/dist-packages/requests -type f -name "*.py" -exec grep -l "collections.MutableMapping" {} \;
find /usr/local/lib/python3.10/dist-packages/requests -type f -name "*.py" -exec grep -l "from collections import MutableMapping" {} \;
find /usr/local/lib/python3.10/dist-packages/requests -type f -name "*.py" -exec grep -l "collections.MutableMapping" {} \;
find /usr/local/lib/python3.10/dist-packages/requests -type f -name "*.py" -exec grep -l "from collections import MutableMapping" {} \;

