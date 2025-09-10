ls -la
open ".travis.yml"
open "Makefile"
open "requirements.txt"
apt-get update && apt-get install -y python3 python3-pip
apt-get install -y build-essential python3-dev
pip install -r requirements.txt
make test
apt-get install -y python3.7 python3.7-venv python3.7-dev && python3.7 -m venv venv
apt-get install -y python3.8 python3.8-venv python3.8-dev && python3.8 -m venv venv
open "requests/packages/urllib3/_collections.py"
edit 'from collections import MutableMapping' 'from collections.abc import MutableMapping'
make test
open "requests/cookies.py"
edit 'import collections' 'from collections.abc import MutableMapping
import collections'
search_file collections.MutableMapping requests/cookies.py
edit 'class RequestsCookieJar(cookielib.CookieJar, collections.MutableMapping):' 'class RequestsCookieJar(cookielib.CookieJar, MutableMapping):'
goto 137
edit 'class RequestsCookieJar(cookielib.CookieJar, collections.MutableMapping):' 'class RequestsCookieJar(cookielib.CookieJar, MutableMapping):'
make test
search_dir collections.Callable
open "requests/models.py"
goto 1
edit 'import collections' 'import collections
from collections.abc import Callable'
goto 140
edit 'if isinstance(hook, collections.Callable):' 'if isinstance(hook, Callable):'
edit 'self.hooks[event].extend(h for h in hook if isinstance(h, collections.Callable))' 'self.hooks[event].extend(h for h in hook if isinstance(h, Callable))'
make test
search_dir HTTPConnection
open "requests/packages/urllib3/connectionpool.py"
edit 'return HTTPConnection(host=self.host,
                              port=self.port,
                              strict=self.strict)' 'return HTTPConnection(host=self.host,
                              port=self.port)'
make test
search_dir MockRequest
open "requests/cookies.py"
search_file 'class MockRequest' requests/cookies.py
goto 21
search_dir origin_req_host
open "requests/cookies.py"
search_dir origin_req_host
open "requests/cookies.py"
search_dir origin_req_host
open "requests/cookies.py"
search_dir origin_req_host
open "requests/cookies.py"
search_dir origin_req_host
open "requests/cookies.py"
search_dir origin_req_host
open "requests/cookies.py"
search_dir origin_req_host

