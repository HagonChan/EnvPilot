ls -la
open ".travis.yml"
open "Makefile"
open "requirements.txt"
apt-get update && apt-get install -y python3 python3-pip
pip3 install -r requirements.txt
make test
pip3 install --upgrade urllib3
python3 setup.py install
git remote -v
apt-get install -y python3.9 python3.9-pip
apt-get install -y python3.9 && curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && python3.9 get-pip.py
apt-get install -y curl
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && python3.9 get-pip.py
ls /usr/bin/python*
search_dir collections.MutableMapping .
open "/testbed/requests/cookies.py"
edit 'import collections' 'import collections.abc'
python3 setup.py install
find_file _collections.py .
open "/testbed/requests/packages/urllib3/_collections.py"
edit 'from collections import MutableMapping' 'from collections.abc import MutableMapping'
python3 setup.py install
open "/testbed/requests/cookies.py"
edit 'class RequestsCookieJar(cookielib.CookieJar, collections.MutableMapping):' 'class RequestsCookieJar(cookielib.CookieJar, collections.abc.MutableMapping):'
goto 136
edit 'class RequestsCookieJar(cookielib.CookieJar, collections.MutableMapping):' 'class RequestsCookieJar(cookielib.CookieJar, collections.abc.MutableMapping):'
python3 setup.py install
make test
search_dir collections.Callable .
open "/testbed/requests/models.py"
edit 'if isinstance(hook, collections.Callable):' 'if isinstance(hook, collections.abc.Callable):'
edit 'self.hooks[event].extend(h for h in hook if isinstance(h, collections.Callable))' 'self.hooks[event].extend(h for h in hook if isinstance(h, collections.abc.Callable))'
python3 setup.py install
make test
pip3 install --upgrade urllib3
find_file urllib3 .
find_file urllib3 requests/packages
apt-get install -y python3.9
search_dir HTTPConnection .
open "/testbed/requests/packages/urllib3/connectionpool.py"
goto 196
edit 'return HTTPConnection(host=self.host,
                              port=self.port,
                              strict=self.strict)' 'return HTTPConnection(host=self.host,
                              port=self.port)'
python3 setup.py install
make test
apt-get install -y python3.9
search_dir 'class MockRequest' .
open "/testbed/requests/cookies.py"
goto 136

