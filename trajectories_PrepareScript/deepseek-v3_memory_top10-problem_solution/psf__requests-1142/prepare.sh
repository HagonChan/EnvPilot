ls -la
open ".travis.yml"
open "Makefile"
open "requirements.txt"
pip install --upgrade pip
apt-get update && apt-get install -y python3-pip
pip3 install -r requirements.txt
make test
open "setup.py"
pip3 show requests
open "requests/compat.py"
search_file 'from collections import MutableMapping' requests/compat.py
open "requests/packages/urllib3/_collections.py"
edit 'from collections import MutableMapping' 'try:
    from collections import MutableMapping
except ImportError:
    from collections.abc import MutableMapping'
make test
open "requests/cookies.py"
search_file 'import collections' requests/cookies.py
search_file collections.MutableMapping requests/cookies.py
edit 'class RequestsCookieJar(cookielib.CookieJar, collections.MutableMapping):' 'try:
    from collections import MutableMapping
except ImportError:
    from collections.abc import MutableMapping

class RequestsCookieJar(cookielib.CookieJar, MutableMapping):'
goto 136
edit 'class RequestsCookieJar(cookielib.CookieJar, collections.MutableMapping):' 'try:
    from collections import MutableMapping
except ImportError:
    from collections.abc import MutableMapping

class RequestsCookieJar(cookielib.CookieJar, MutableMapping):'
make test
search_dir collections.Callable
open "requests/models.py"
edit 'if isinstance(hook, collections.Callable):' 'try:
    from collections import Callable
except ImportError:
    from collections.abc import Callable

        if isinstance(hook, Callable):'
edit 'try:
    from collections import Callable
except ImportError:
    from collections.abc import Callable

        if isinstance(hook, Callable):' 'try:
    from collections import Callable
except ImportError:
    from collections.abc import Callable

        if isinstance(hook, Callable):'
edit 'if isinstance(hook, collections.Callable):' 'if isinstance(hook, Callable):'
search_file collections.Callable requests/models.py
edit 'self.hooks[event].extend(h for h in hook if isinstance(h, collections.Callable))' 'self.hooks[event].extend(h for h in hook if isinstance(h, Callable))'
make test
edit 'try:
    from collections import Callable
except ImportError:
    from collections.abc import Callable' 'try:
    from collections import Callable
except ImportError:
    from collections.abc import Callable'
edit 'try:
    from collections import Callable
except ImportError:
    from collections.abc import Callable' 'try:
            from collections import Callable
except ImportError:
            from collections.abc import Callable'
edit 'try:
            from collections import Callable
except ImportError:
            from collections.abc import Callable' 'try:
            from collections import Callable
except ImportError:
            from collections.abc import Callable'
edit 'try:
            from collections import Callable
except ImportError:
            from collections.abc import Callable' 'try:
            from collections import Callable
except ImportError:
            from collections.abc import Callable'
edit 'try:
            from collections import Callable
except ImportError:
            from collections.abc import Callable' 'try:
            from collections import Callable
except ImportError:
            from collections.abc import Callable'

