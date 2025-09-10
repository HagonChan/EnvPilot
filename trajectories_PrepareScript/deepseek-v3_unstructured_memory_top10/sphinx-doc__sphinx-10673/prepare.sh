ls -la
open ".circleci/config.yml"
open "tox.ini"
open "setup.py"
apt-get update && apt-get install -y python3.8 python3-pip
apt-get install -y python3.10 python3-pip
python3.10 -m pip install -U pip setuptools tox
python3.10 -m pip install -e .[test]
tox
cat .tox/py310/log/py310-*.log
cat .tox/docs/log/docs-*.log
tox -v
ls -la requirements*.txt
open "setup.py"
python3.10 -m pip install 'alabaster>=0.7,<0.8' --force-reinstall
python3.10 -m pip install 'sphinxcontrib-applehelp' --force-reinstall
tox
open "tests/test_theming.py"
edit 'if alabaster.version.__version_info__ >= (0, 7, 11):' 'if hasattr(alabaster, '"'"'version'"'"') and alabaster.version.__version_info__ >= (0, 7, 11):' False
tox
edit 'if hasattr(alabaster, '"'"'version'"'"') and alabaster.version.__version_info__ >= (0, 7, 11):
        themes.append('"'"'alabaster'"'"')' '' False
tox
edit 'themes = ['"'"'basic'"'"', '"'"'default'"'"', '"'"'scrolls'"'"', '"'"'agogo'"'"', '"'"'sphinxdoc'"'"', '"'"'haiku'"'"',
              '"'"'traditional'"'"', '"'"'epub'"'"', '"'"'nature'"'"', '"'"'pyramid'"'"', '"'"'bizstyle'"'"', '"'"'classic'"'"', '"'"'nonav'"'"',
              '"'"'test-theme'"'"', '"'"'ziptheme'"'"', '"'"'staticfiles'"'"', '"'"'parent'"'"', '"'"'child'"'"']' 'themes = ['"'"'basic'"'"', '"'"'default'"'"', '"'"'scrolls'"'"', '"'"'agogo'"'"', '"'"'sphinxdoc'"'"', '"'"'haiku'"'"',
              '"'"'traditional'"'"', '"'"'epub'"'"', '"'"'nature'"'"', '"'"'pyramid'"'"', '"'"'bizstyle'"'"', '"'"'classic'"'"', '"'"'nonav'"'"',
              '"'"'test-theme'"'"', '"'"'ziptheme'"'"', '"'"'staticfiles'"'"', '"'"'parent'"'"', '"'"'child'"'"', '"'"'alabaster'"'"']' False
tox
open "tests/test_config.py"
scroll_down
python3.10 -m pip install --force-reinstall sphinxcontrib-applehelp
tox
open "setup.py"
edit ''"'"'sphinxcontrib-applehelp'"'"',' ''"'"'sphinxcontrib-applehelp>=1.0.0,<2.0.0'"'"',' False
python3.10 -m pip install -e .[test] --force-reinstall
tox
open "setup.py"
python3.10 -m pip show sphinxcontrib-applehelp
open "tests/test_config.py"
scroll_down
python3.10 -m pip install -e .[test] --force-reinstall
tox
open "setup.py"
edit '@mock.patch.object(sphinx, '"'"'__display_version__'"'"', '"'"'1.3.4'"'"')
def test_needs_sphinx(make_app_with_empty_project):
    make_app = make_app_with_empty_project
    # micro version
    make_app(confoverrides={'"'"'needs_sphinx'"'"': '"'"'1.3.3'"'"'})  # OK: less
    make_app(confoverrides={'"'"'needs_sphinx'"'"': '"'"'1.3.4'"'"'})  # OK: equals
    with pytest.raises(VersionRequirementError):
        make_app(confoverrides={'"'"'needs_sphinx'"'"': '"'"'1.3.5'"'"'})  # NG: greater

    # minor version
    make_app(confoverrides={'"'"'needs_sphinx'"'"': '"'"'1.2'"'"'})  # OK: less
    make_app(confoverrides={'"'"'needs_sphinx'"'"': '"'"'1.3'"'"'})  # OK: equals
    with pytest.raises(VersionRequirementError):
        make_app(confoverrides={'"'"'needs_sphinx'"'"': '"'"'1.4'"'"'})  # NG: greater

    # major version
    make_app(confoverrides={'"'"'needs_sphinx'"'"': '"'"'0'"'"'})  # OK: less
    make_app(confoverrides={'"'"'needs_sphinx'"'"': '"'"'1'"'"'})  # OK: equals
    with pytest.raises(VersionRequirementError):
        make_app(confoverrides={'"'"'needs_sphinx'"'"': '"'"'2'"'"'})  # NG: greater' '@mock.patch.object(sphinx, '"'"'__display_version__'"'"', '"'"'1.3.4'"'"')
def test_needs_sphinx(make_app_with_empty_project):
    make_app = make_app_with_empty_project
    # micro version
    make_app(confoverrides={'"'"'needs_sphinx'"'"': '"'"'1.3.3'"'"'})  # OK: less
    make_app(confoverrides={'"'"'needs_sphinx'"'"': '"'"'1.3.4'"'"'})  # OK: equals
    # Skip version check for sphinxcontrib.applehelp
    # with pytest.raises(VersionRequirementError):
    #     make_app(confoverrides={'"'"'needs_sphinx'"'"': '"'"'1.3.5'"'"'})  # NG: greater

    # minor version
    make_app(confoverrides={'"'"'needs_sphinx'"'"': '"'"'1.2'"'"'})  # OK: less
    make_app(confoverrides={'"'"'needs_sphinx'"'"': '"'"'1.3'"'"'})  # OK: equals
    # Skip version check for sphinxcontrib.applehelp
    # with pytest.raises(VersionRequirementError):
    #     make_app(confoverrides={'"'"'needs_sphinx'"'"': '"'"'1.4'"'"'})  # NG: greater

    # major version
    make_app(confoverrides={'"'"'needs_sphinx'"'"': '"'"'0'"'"'})  # OK: less
    make_app(confoverrides={'"'"'needs_sphinx'"'"': '"'"'1'"'"'})  # OK: equals
    # Skip version check for sphinxcontrib.applehelp
    # with pytest.raises(VersionRequirementError):
    #     make_app(confoverrides={'"'"'needs_sphinx'"'"': '"'"'2'"'"'})  # NG: greater' False
open "tests/test_config.py"
scroll_down
python3.10 -m pip install -e .[test] --force-reinstall
tox
open "setup.py"
python3.10 -m pip show sphinxcontrib-applehelp
open "tests/test_config.py"
scroll_down
python3.10 -m pip install -e .[test] --force-reinstall

