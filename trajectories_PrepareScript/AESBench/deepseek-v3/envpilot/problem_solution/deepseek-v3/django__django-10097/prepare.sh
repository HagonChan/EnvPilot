ls -la
open "requirements.txt"
open "setup.py"
apt-get update && apt-get install -y build-essential python3-dev
pip install -e .
apt-get install -y python3-pip
pip install -e .
ls -la tests/
ls -la runtests.py
django-admin test --settings=tests.settings
ls -la tests/settings.py
open "tests/test_sqlite.py"
django-admin test --settings=tests.test_sqlite
edit 'SECRET_KEY = "django_tests_secret_key"' 'SECRET_KEY = "django_tests_secret_key"

INSTALLED_APPS = [
    '"'"'django.contrib.admin'"'"',
    '"'"'django.contrib.auth'"'"',
    '"'"'django.contrib.contenttypes'"'"',
    '"'"'django.contrib.sessions'"'"',
    '"'"'django.contrib.messages'"'"',
]'
django-admin test --settings=tests.test_sqlite
edit 'INSTALLED_APPS = [
    '"'"'django.contrib.admin'"'"',
    '"'"'django.contrib.auth'"'"',
    '"'"'django.contrib.contenttypes'"'"',
    '"'"'django.contrib.sessions'"'"',
    '"'"'django.contrib.messages'"'"',
]' 'INSTALLED_APPS = [
    '"'"'django.contrib.auth'"'"',
    '"'"'django.contrib.contenttypes'"'"',
]'
django-admin test --settings=tests.test_sqlite
edit 'INSTALLED_APPS = [
    '"'"'django.contrib.auth'"'"',
    '"'"'django.contrib.contenttypes'"'"',
]' 'INSTALLED_APPS = [
    '"'"'django.contrib.admin'"'"',
    '"'"'django.contrib.auth'"'"',
    '"'"'django.contrib.contenttypes'"'"',
    '"'"'django.contrib.sessions'"'"',
]'
django-admin test --settings=tests.test_sqlite
edit 'INSTALLED_APPS = [
    '"'"'django.contrib.admin'"'"',
    '"'"'django.contrib.auth'"'"',
    '"'"'django.contrib.contenttypes'"'"',
    '"'"'django.contrib.sessions'"'"',
]' 'INSTALLED_APPS = [
    '"'"'django.contrib.auth'"'"',
    '"'"'django.contrib.contenttypes'"'"',
]'
django-admin test --settings=tests.test_sqlite
edit 'INSTALLED_APPS = [
    '"'"'django.contrib.auth'"'"',
    '"'"'django.contrib.contenttypes'"'"',
]' 'INSTALLED_APPS = [
    '"'"'django.contrib.admin'"'"',
    '"'"'django.contrib.auth'"'"',
    '"'"'django.contrib.contenttypes'"'"',
    '"'"'django.contrib.sessions'"'"',
]'
apt-get install -y python3-gdal python3-psycopg2
django-admin test --settings=tests.test_sqlite
ls -la tests/
open "tests/README.rst"
cd tests
pip install -e ..
pip install -r requirements/py3.txt
./runtests.py
edit '#!/usr/bin/env python' '#!/usr/bin/env python3'
open "runtests.py"
edit '#!/usr/bin/env python' '#!/usr/bin/env python3'
./runtests.py
edit 'failures = test_runner.run_tests(' 'failures = test_runner.run_tests(parallel=0,'
goto 287
edit 'parallel=actual_test_processes(parallel),' parallel=0,
./runtests.py
