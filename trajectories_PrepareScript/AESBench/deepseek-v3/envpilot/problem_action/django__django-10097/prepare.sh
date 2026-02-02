ls -la
open "README.rst"
open "docs/intro/install.txt"
open "setup.py"
apt-get update && apt-get install -y python3-dev build-essential
python3 -m venv venv
apt-get install -y python3.10-venv
python3 -m venv venv
source venv/bin/activate
pip install -e .
open "tox.ini"
cd tests && python runtests.py
pip install tblib
python runtests.py
python runtests.py --parallel=1
open "tests/test_site/settings.py"
open "tests/runtests.py"
find_file runtests.py
open "tests/runtests.py"
pwd
open "runtests.py"
apt-get install -y tzdata
python runtests.py --parallel=1 admin_scripts
python runtests.py --parallel=1
edit 'ALWAYS_INSTALLED_APPS = [
    '"'"'django.contrib.contenttypes'"'"',
    '"'"'django.contrib.auth'"'"',
    '"'"'django.contrib.sites'"'"',
    '"'"'django.contrib.sessions'"'"',
    '"'"'django.contrib.messages'"'"',
    '"'"'django.contrib.admin.apps.SimpleAdminConfig'"'"',
    '"'"'django.contrib.staticfiles'"'"',
]' 'ALWAYS_INSTALLED_APPS = [
    '"'"'django.contrib.contenttypes'"'"',
    '"'"'django.contrib.auth'"'"',
    '"'"'django.contrib.sites'"'"',
    '"'"'django.contrib.sessions'"'"',
    '"'"'django.contrib.messages'"'"',
    '"'"'django.contrib.admin.apps.SimpleAdminConfig'"'"',
    '"'"'django.contrib.staticfiles'"'"',
    '"'"'django.contrib.flatpages'"'"',
    '"'"'django.contrib.redirects'"'"',
]'
python runtests.py --parallel=1
edit 'ALWAYS_INSTALLED_APPS = [
    '"'"'django.contrib.contenttypes'"'"',
    '"'"'django.contrib.auth'"'"',
    '"'"'django.contrib.sites'"'"',
    '"'"'django.contrib.sessions'"'"',
    '"'"'django.contrib.messages'"'"',
    '"'"'django.contrib.admin.apps.SimpleAdminConfig'"'"',
    '"'"'django.contrib.staticfiles'"'"',
    '"'"'django.contrib.flatpages'"'"',
    '"'"'django.contrib.redirects'"'"',
]' 'ALWAYS_INSTALLED_APPS = [
    '"'"'django.contrib.contenttypes'"'"',
    '"'"'django.contrib.auth'"'"',
    '"'"'django.contrib.sites'"'"',
    '"'"'django.contrib.sessions'"'"',
    '"'"'django.contrib.messages'"'"',
    '"'"'django.contrib.admin.apps.SimpleAdminConfig'"'"',
    '"'"'django.contrib.staticfiles'"'"',
    '"'"'django.contrib.flatpages'"'"',
]'
python runtests.py --parallel=1
edit 'ALWAYS_INSTALLED_APPS = [
    '"'"'django.contrib.contenttypes'"'"',
    '"'"'django.contrib.auth'"'"',
    '"'"'django.contrib.sites'"'"',
    '"'"'django.contrib.sessions'"'"',
    '"'"'django.contrib.messages'"'"',
    '"'"'django.contrib.admin.apps.SimpleAdminConfig'"'"',
    '"'"'django.contrib.staticfiles'"'"',
    '"'"'django.contrib.flatpages'"'"',
]' 'ALWAYS_INSTALLED_APPS = [
    '"'"'django.contrib.contenttypes'"'"',
    '"'"'django.contrib.auth'"'"',
    '"'"'django.contrib.sites'"'"',
    '"'"'django.contrib.sessions'"'"',
    '"'"'django.contrib.messages'"'"',
    '"'"'django.contrib.admin.apps.SimpleAdminConfig'"'"',
    '"'"'django.contrib.staticfiles'"'"',
]'
python runtests.py --parallel=1
edit 'ALWAYS_INSTALLED_APPS = [
    '"'"'django.contrib.contenttypes'"'"',
    '"'"'django.contrib.auth'"'"',
    '"'"'django.contrib.sites'"'"',
    '"'"'django.contrib.sessions'"'"',
    '"'"'django.contrib.messages'"'"',
    '"'"'django.contrib.admin.apps.SimpleAdminConfig'"'"',
    '"'"'django.contrib.staticfiles'"'"',
]' 'ALWAYS_INSTALLED_APPS = [
    '"'"'django.contrib.contenttypes'"'"',
    '"'"'django.contrib.auth'"'"',
    '"'"'django.contrib.sites.apps.SitesConfig'"'"',
    '"'"'django.contrib.sessions'"'"',
    '"'"'django.contrib.messages'"'"',
    '"'"'django.contrib.admin.apps.SimpleAdminConfig'"'"',
    '"'"'django.contrib.staticfiles'"'"',
]'
python runtests.py --parallel=1
edit 'ALWAYS_INSTALLED_APPS = [
    '"'"'django.contrib.contenttypes'"'"',
    '"'"'django.contrib.auth'"'"',
    '"'"'django.contrib.sites.apps.SitesConfig'"'"',
    '"'"'django.contrib.sessions'"'"',
    '"'"'django.contrib.messages'"'"',
    '"'"'django.contrib.admin.apps.SimpleAdminConfig'"'"',
    '"'"'django.contrib.staticfiles'"'"',
]' 'ALWAYS_INSTALLED_APPS = [
    '"'"'django.contrib.contenttypes'"'"',
    '"'"'django.contrib.auth'"'"',
    '"'"'django.contrib.sites'"'"',
    '"'"'django.contrib.sessions'"'"',
    '"'"'django.contrib.messages'"'"',
    '"'"'django.contrib.admin.apps.SimpleAdminConfig'"'"',
    '"'"'django.contrib.staticfiles'"'"',
]'
python runtests.py --parallel=1
python manage.py migrate sites
find_file manage.py
django-admin migrate sites
python runtests.py --parallel=1 admin_scripts --verbosity=2
python runtests.py --parallel=1
edit 'ALWAYS_INSTALLED_APPS = [
    '"'"'django.contrib.contenttypes'"'"',
    '"'"'django.contrib.auth'"'"',
    '"'"'django.contrib.sites'"'"',
    '"'"'django.contrib.sessions'"'"',
    '"'"'django.contrib.messages'"'"',
    '"'"'django.contrib.admin.apps.SimpleAdminConfig'"'"',
    '"'"'django.contrib.staticfiles'"'"',
]' 'ALWAYS_INSTALLED_APPS = [
    '"'"'django.contrib.contenttypes'"'"',
    '"'"'django.contrib.auth'"'"',
    '"'"'django.contrib.sites.apps.SitesConfig'"'"',
    '"'"'django.contrib.sessions'"'"',
    '"'"'django.contrib.messages'"'"',
    '"'"'django.contrib.admin.apps.SimpleAdminConfig'"'"',
    '"'"'django.contrib.staticfiles'"'"',
]'
python runtests.py --parallel=1
open "runtests.py"
python runtests.py --parallel=1 sites_tests
edit 'ALWAYS_INSTALLED_APPS = [
    '"'"'django.contrib.contenttypes'"'"',
    '"'"'django.contrib.auth'"'"',
    '"'"'django.contrib.sites.apps.SitesConfig'"'"',
    '"'"'django.contrib.sessions'"'"',
    '"'"'django.contrib.messages'"'"',
    '"'"'django.contrib.admin.apps.SimpleAdminConfig'"'"',
    '"'"'django.contrib.staticfiles'"'"',
]' 'ALWAYS_INSTALLED_APPS = [
    '"'"'django.contrib.contenttypes'"'"',
    '"'"'django.contrib.auth'"'"',
    '"'"'django.contrib.sessions'"'"',
    '"'"'django.contrib.messages'"'"',
    '"'"'django.contrib.admin.apps.SimpleAdminConfig'"'"',
    '"'"'django.contrib.staticfiles'"'"',
]'
python runtests.py --parallel=1 sites_tests
edit 'CONTRIB_TESTS_TO_APPS = {
    '"'"'flatpages_tests'"'"': '"'"'django.contrib.flatpages'"'"',
    '"'"'redirects_tests'"'"': '"'"'django.contrib.redirects'"'"',
}' 'CONTRIB_TESTS_TO_APPS = {
    '"'"'flatpages_tests'"'"': '"'"'django.contrib.flatpages'"'"',
    '"'"'redirects_tests'"'"': '"'"'django.contrib.redirects'"'"',
    '"'"'sites_tests'"'"': '"'"'django.contrib.sites'"'"',
}'
python runtests.py --parallel=1 sites_tests
python runtests.py --parallel=1
edit 'CONTRIB_TESTS_TO_APPS = {
    '"'"'flatpages_tests'"'"': '"'"'django.contrib.flatpages'"'"',
    '"'"'redirects_tests'"'"': '"'"'django.contrib.redirects'"'"',
    '"'"'sites_tests'"'"': '"'"'django.contrib.sites'"'"',
}' 'CONTRIB_TESTS_TO_APPS = {
    '"'"'flatpages_tests'"'"': '"'"'django.contrib.flatpages'"'"',
    '"'"'redirects_tests'"'"': '"'"'django.contrib.redirects'"'"',
    '"'"'sites_tests'"'"': '"'"'django.contrib.sites'"'"',
    '"'"'comments_tests'"'"': '"'"'django.contrib.comments'"'"',
    '"'"'admin_tests'"'"': '"'"'django.contrib.admin'"'"',
}'

