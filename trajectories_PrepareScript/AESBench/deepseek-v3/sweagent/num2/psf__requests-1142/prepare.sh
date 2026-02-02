ls -la
open ".travis.yml"
open "Makefile"
make test-deps
pip install -r requirements.txt
apt-get update && apt-get install -y python3.3 python3-pip
pip3 install -r requirements.txt
py.test
open "requests/packages/urllib3/_collections.py"
edit 'from collections import MutableMapping' 'from collections.abc import MutableMapping' False
py.test
open "requests/cookies.py"
edit 'import collections' 'from collections.abc import MutableMapping
import collections' False
search_file collections.MutableMapping requests/cookies.py
edit 'class RequestsCookieJar(cookielib.CookieJar, collections.MutableMapping):' 'class RequestsCookieJar(cookielib.CookieJar, MutableMapping):' False
py.test
search_dir collections.Callable
open "requests/models.py"
edit 'if isinstance(hook, collections.Callable):' 'if isinstance(hook, collections.abc.Callable):' False
edit 'self.hooks[event].extend(h for h in hook if isinstance(h, collections.Callable))' 'self.hooks[event].extend(h for h in hook if isinstance(h, collections.abc.Callable))' False
py.test
search_dir HTTPConnection requests/packages/urllib3
open "requests/packages/urllib3/connectionpool.py"
edit 'return HTTPConnection(host=self.host,
                              port=self.port,
                              strict=self.strict)' 'return HTTPConnection(host=self.host,
                              port=self.port)' False
py.test
search_file HTTPSConnection requests/packages/urllib3/connectionpool.py
edit 'connection = VerifiedHTTPSConnection(host=self.host,
                                             port=self.port,
                                             strict=self.strict)' 'connection = VerifiedHTTPSConnection(host=self.host,
                                             port=self.port)' False
py.test
find_file MockRequest requests
open "test_requests.py"
search_dir MockRequest
open "requests/cookies.py"
grep -r "MockRequest" /testbed
search_file 'class MockRequest' requests/cookies.py
goto 21
py.test
edit 'class MockRequest(object):
    """Wraps a `requests.Request` to mimic a `urllib2.Request`.' 'class MockRequest(object):
    """Wraps a `requests.Request` to mimic a `urllib2.Request`.

    The code in `cookielib.CookieJar` expects this interface in order to correctly
    manage cookie policies, i.e., determine whether a cookie can be set, given the
    domains of the request and the cookie.

    The original request object is read-only. The client is responsible for collecting
    the new headers via `get_new_headers()` and interpreting them appropriately. You
    probably want `get_cookie_header`, defined below.
    """

    def __init__(self, request):
        self._r = request
        self._new_headers = {}
        self.type = urlparse(self._r.url).scheme
        self.origin_req_host = self.get_host()' False
edit 'class MockRequest(object):
    """Wraps a `requests.Request` to mimic a `urllib2.Request`.' 'class MockRequest(object):
    """Wraps a `requests.Request` to mimic a `urllib2.Request`.

    The code in `cookielib.CookieJar` expects this interface in order to correctly
    manage cookie policies, i.e., determine whether a cookie can be set, given the
    domains of the request and the cookie.

    The original request object is read-only. The client is responsible for collecting
    the new headers via `get_new_headers()` and interpreting them appropriately. You
    probably want `get_cookie_header`, defined below.
    """

    def __init__(self, request):
        self._r = request
        self._new_headers = {}
        self.type = urlparse(self._r.url).scheme
        self.origin_req_host = self.get_host()' False
edit 'class MockRequest(object):
    """Wraps a `requests.Request` to mimic a `urllib2.Request`.

    The code in `cookielib.CookieJar` expects this interface in order to correctly
    manage cookie policies, i.e., determine whether a cookie can be set, given the
    domains of the request and the cookie.

    The original request object is read-only. The client is responsible for collecting
    the new headers via `get_new_headers()` and interpreting them appropriately. You
    probably want `get_cookie_header`, defined below.
    """

    def __init__(self, request):
        self._r = request
        self._new_headers = {}
        self.type = urlparse(self._r.url).scheme
        self.origin_req_host = self.get_host()

    The code in `cookielib.CookieJar` expects this interface in order to correctly
    manage cookie policies, i.e., determine whether a cookie can be set, given the
    domains of the request and the cookie.

    The original request object is read-only. The client is responsible for collecting
    the new headers via `get_new_headers()` and interpreting them appropriately. You
    probably want `get_cookie_header`, defined below.
    """

    def __init__(self, request):
        self._r = request
        self._new_headers = {}
        self.type = urlparse(self._r.url).scheme
        self.origin_req_host = self.get_host()

    The code in `cookielib.CookieJar` expects this interface in order to correctly
    manage cookie policies, i.e., determine whether a cookie can be set, given the
    domains of the request and the cookie.

    The original request object is read-only. The client is responsible for collecting
    the new headers via `get_new_headers()` and interpreting them appropriately. You
    probably want `get_cookie_header`, defined below.
    """

    def __init__(self, request):
        self._r = request
        self._new_headers = {}
        self.type = urlparse(self._r.url).scheme' 'class MockRequest(object):
    """Wraps a `requests.Request` to mimic a `urllib2.Request`.

    The code in `cookielib.CookieJar` expects this interface in order to correctly
    manage cookie policies, i.e., determine whether a cookie can be set, given the
    domains of the request and the cookie.

    The original request object is read-only. The client is responsible for collecting
    the new headers via `get_new_headers()` and interpreting them appropriately. You
    probably want `get_cookie_header`, defined below.
    """

    def __init__(self, request):
        self._r = request
        self._new_headers = {}
        self.type = urlparse(self._r.url).scheme
        self.origin_req_host = self.get_host()' False
py.test
search_dir verify test_requests.py
find_file test_requests.py
open "test_requests.py"
edit 'r = requests.get(httpbin('"'"'get'"'"'))' 'r = requests.get(httpbin('"'"'get'"'"'), verify=False)' False
search_file 'def test_links' test_requests.py
goto 277
edit 'def test_links(self):
        url = '"'"'https://api.github.com/users/kennethreitz/repos?page=1&per_page=10'"'"'
        r = requests.head(url=url)
        self.assertEqual(r.links['"'"'next'"'"']['"'"'rel'"'"'], '"'"'next'"'"')' 'def test_links(self):
        url = '"'"'https://api.github.com/users/kennethreitz/repos?page=1&per_page=10'"'"'
        r = requests.head(url=url, verify=False)
        self.assertEqual(r.links['"'"'next'"'"']['"'"'rel'"'"'], '"'"'next'"'"')' False
py.test
