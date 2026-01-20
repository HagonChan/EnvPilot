ls -la
ls -la .github/workflows
open ".github/workflows/main.yml"
apt-get update && apt-get install -y graphviz gcc g++ libssl-dev libyaml-dev
apt-get install -y python3 python3-pip
pip install tox
tox
tox -e du14
pip install sphinxcontrib-applehelp alabaster
pip install alabaster==0.7.13
pip install babel docutils imagesize Jinja2 Pygments requests snowballstemmer sphinxcontrib-devhelp sphinxcontrib-htmlhelp sphinxcontrib-jsmath sphinxcontrib-qthelp sphinxcontrib-serializinghtml
pip install docutils==0.19
tox -e du14
open "tests/test_build_html.py" 1
search_file test_html_code_role tests/test_build_html.py
goto 1706
ls -la tests/testroots/reST-code-role
mkdir -p tests/testroots/reST-code-role
create tests/testroots/reST-code-role/index.rst
edit '' 'Inline :code:`def foo(1 + 2 + None + "abc"): pass` code block'
tox -e du14
tox -e du14 -- tests/test_build_html.py::test_html_code_role -v
edit 'Inline :code:`def foo(1 + 2 + None + "abc"): pass` code block' 'Inline :code:`def foo(1 + 2 + None + "abc"): pass` code block'
open "/tmp/pytest-of-root/pytest-10/reST-code-role/_build/html/index.html"
edit 'Inline :code:`def foo(1 + 2 + None + "abc"): pass` code block' 'Inline :code:`def foo(1 + 2 + None + "abc"): pass` code block'
edit 'Inline :code:`def foo(1 + 2 + None + "abc"): pass` code block' 'Inline :code:`def foo(): pass` code block'
open "tests/testroots/reST-code-role/index.rst"
edit 'Inline :code:`def foo(1 + 2 + None + "abc"): pass` code block' 'Inline :code:`print("Hello")` code block'
tox -e du14 -- tests/test_build_html.py::test_html_code_role -v
edit 'Inline :code:`print("Hello")` code block' 'Inline :code:`def foo(1 + 2 + None + "abc"): pass` code block'
tox -e du14 -- tests/test_build_html.py::test_html_code_role -v
open "/tmp/pytest-of-root/pytest-12/reST-code-role/_build/html/index.html"
open "tests/test_build_html.py" 1706
edit '<span class="k">def</span> <span class="nf">foo</span>' '<span class="k">def</span><span class="w"> </span><span class="nf">foo</span>'
tox -e du14 -- tests/test_build_html.py::test_html_code_role -v
tox
