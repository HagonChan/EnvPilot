ls -la
open ".travis.yml"
open "Makefile"
open "requirements.txt"
pip install -r requirements.txt
apt-get install -y python3-pip
apt-get update
apt-get install -y python3-pip
pip install -r requirements.txt
make test
pip install --upgrade requests
open "test_requests.py"
pip install --upgrade requests==2.26.0
make test
open "setup.py"
python setup.py install
apt-get install -y python3
python3 setup.py install
open "requests/packages/urllib3/_collections.py"
edit 'from collections import MutableMapping' 'from collections.abc import MutableMapping'
python3 setup.py install
open "requests/cookies.py"
edit 'class RequestsCookieJar(cookielib.CookieJar, collections.MutableMapping):' 'from collections.abc import MutableMapping
class RequestsCookieJar(cookielib.CookieJar, MutableMapping):'
goto 136
edit 'class RequestsCookieJar(cookielib.CookieJar, collections.MutableMapping):' 'class RequestsCookieJar(cookielib.CookieJar, collections.abc.MutableMapping):'
search_file 'from collections import abc' requests/cookies.py
insert 'from collections import abc' 9
python3 setup.py install
make test
open "requests/models.py"
edit 'import collections' 'import collections
from collections import abc'
search_file collections.Callable requests/models.py
edit 'if isinstance(hook, collections.Callable):' 'if isinstance(hook, collections.abc.Callable):'
goto 141
edit 'if isinstance(hook, collections.Callable):' 'if isinstance(hook, collections.abc.Callable):'
goto 144
edit 'self.hooks[event].extend(h for h in hook if isinstance(h, collections.Callable))' 'self.hooks[event].extend(h for h in hook if isinstance(h, collections.abc.Callable))'
python3 setup.py install
make test
open "requests/packages/urllib3/connectionpool.py"
edit 'return HTTPConnection(host=self.host,
                              port=self.port,
                              strict=self.strict)' 'return HTTPConnection(host=self.host,
                              port=self.port)'
python3 setup.py install
make test
open "requests/cookies.py"
search_file 'class MockRequest' requests/cookies.py
goto 21
edit 'def get_origin_req_host(self):
        return self.get_host()' 'def get_origin_req_host(self):
        return self.get_host()

    @property
    def origin_req_host(self):
        return self.get_origin_req_host()'
python3 setup.py install
make test

