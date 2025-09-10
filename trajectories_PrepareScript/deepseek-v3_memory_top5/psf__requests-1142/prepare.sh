ls
open "README.rst"
open "setup.py"
apt-get update && apt-get install -y python3-pip python3-dev build-essential
python setup.py install
python3 setup.py install
open "requests/packages/urllib3/_collections.py"
edit 'from collections import MutableMapping' 'from collections.abc import MutableMapping'
python3 setup.py install
open "requests/cookies.py"
edit 'import collections' 'from collections.abc import MutableMapping
import collections'
search_file 'class RequestsCookieJar' requests/cookies.py
edit 'class RequestsCookieJar(cookielib.CookieJar, collections.MutableMapping):' 'class RequestsCookieJar(cookielib.CookieJar, MutableMapping):'
goto 137
edit 'class RequestsCookieJar(cookielib.CookieJar, collections.MutableMapping):' 'class RequestsCookieJar(cookielib.CookieJar, MutableMapping):'
python3 setup.py install
open "Makefile"
pip install pytest
make test
open "requests/models.py"
edit 'import collections' 'from collections.abc import Callable
import collections'
search_file collections.Callable requests/models.py
goto 141
edit 'if isinstance(hook, collections.Callable):' 'if isinstance(hook, Callable):'
edit 'self.hooks[event].extend(h for h in hook if isinstance(h, collections.Callable))' 'self.hooks[event].extend(h for h in hook if isinstance(h, Callable))'
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

    origin_req_host = property(get_origin_req_host)'
python3 setup.py install
make test
curl http://httpbin.org/get
apt-get install -y curl
curl http://httpbin.org/get
open "test_requests.py"
pip install httpbin
python3 -m httpbin.core &
export HTTPBIN_URL=http://localhost:5000
make test
edit 'def httpbin(*suffix):
    """Returns url for HTTPBIN resource."""
    return HTTPBIN + '"'"'/'"'"'.join(suffix)' 'def httpbin(*suffix):
    """Returns url for HTTPBIN resource."""
    url = HTTPBIN.rstrip('"'"'/'"'"')
    return f"{url}/{'"'"'/'"'"'.join(suffix)}"'
python3 setup.py install
make test
