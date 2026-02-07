ls -la
ls -la .github/workflows
ls -la .circleci
ls -la *.yml
open "tox.ini"
open "setup.py"
open "README.rst"
open "docs/internals/contributing/writing-code/unit-tests.txt"
pip install tox
apt-get update && apt-get install -y python3-pip
pip install tox
tox
open "tox.ini"
edit 'passenv = DJANGO_SETTINGS_MODULE PYTHONPATH HOME DISPLAY' 'passenv = DJANGO_SETTINGS_MODULE,PYTHONPATH,HOME,DISPLAY' True
tox
pip install django
tox
pip install -r tests/requirements/py3.txt
tox
pip install -e .
tox
/testbed/.tox/py3/bin/pip install django
/testbed/.tox/py3/bin/python -c "import sys; print(sys.path)"
/testbed/.tox/py3/bin/python /testbed/tests/runtests.py
/testbed/.tox/py3/bin/python /testbed/tests/runtests.py --parallel=1
open "django/contrib/admin/checks.py"
edit 'if ('"'"'django.contrib.auth.context_processors.auth'"'"'
                not in default_template_engine.context_processors and
                '"'"'django.contrib.auth.backends.ModelBackend'"'"' in settings.AUTHENTICATION_BACKENDS):' 'if ('"'"'django.contrib.auth.context_processors.auth'"'"' not in default_template_engine.context_processors
                and '"'"'django.contrib.auth.backends.ModelBackend'"'"' in settings.AUTHENTICATION_BACKENDS):' True
tox -e flake8
tox -e isort
isort django tests scripts
pip install isort
isort django tests scripts
tox -e isort
tox -e flake8
edit 'if ('"'"'django.contrib.auth.context_processors.auth'"'"' not in default_template_engine.context_processors
                and '"'"'django.contrib.auth.backends.ModelBackend'"'"' in settings.AUTHENTICATION_BACKENDS):' 'if ('"'"'django.contrib.auth.context_processors.auth'"'"' not in default_template_engine.context_processors and
                '"'"'django.contrib.auth.backends.ModelBackend'"'"' in settings.AUTHENTICATION_BACKENDS):' True
tox -e flake8
open "django/contrib/admin/options.py"
goto 1075
edit 'levels_repr = '"'"', '"'"'.join('"'"'`%s`'"'"' % l for l in levels)' 'levels_repr = '"'"', '"'"'.join('"'"'`%s`'"'"' % level for level in levels)' True
tox -e flake8
open "tests/staticfiles_tests/test_management.py"
goto 74
edit 'lines = [l.strip() for l in result.split('"'"'\n'"'"')]' 'lines = [line.strip() for line in result.split('"'"'\n'"'"')]' True
tox -e flake8
open "tests/schema/tests.py"
goto 153
edit 'if cast_function and not type(database_default) == type(expected_default):' 'if cast_function and not isinstance(database_default, type(expected_default)):' True
tox -e flake8
open "tests/user_commands/urls.py"

