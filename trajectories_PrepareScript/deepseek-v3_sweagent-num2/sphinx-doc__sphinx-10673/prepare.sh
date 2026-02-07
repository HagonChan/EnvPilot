ls -la
ls -la .github/workflows
open ".github/workflows/main.yml"
open "tox.ini"
sudo apt-get install graphviz -y
apt-get install graphviz -y
python -m pip install -U pip tox
python3 -m pip install -U pip tox
apt-get install python3 python3-pip -y
python3 -m pip install -U pip tox
tox -l
tox -e py310
open "tox.ini"
python3 -m pytest --durations 25
python3 -m pip install pytest
python3 -m pytest --durations 25
python3 -m pip install docutils==0.19.*
python3 -m pytest --durations 25
python3 -m pip install babel
python3 -m pip install alabaster
python3 -m pip uninstall alabaster -y
python3 -m pip install alabaster>=0.7,<0.8
python3 -m pip install "alabaster>=0.7,<0.8"
python3 -m pip install imagesize>=1.3
python3 -m pip install Jinja2>=3.0
python3 -m pip install requests>=2.5.0
python3 -m pip install snowballstemmer>=2.0
python3 -m pip install sphinxcontrib-applehelp
python3 -m pip install sphinxcontrib-devhelp
python3 -m pip install sphinxcontrib-htmlhelp>=2.0.0
python3 -m pip install sphinxcontrib-jsmath
python3 -m pip install sphinxcontrib-qthelp
python3 -m pip install sphinxcontrib-serializinghtml>=1.1.5
python3 -m pytest --durations 25
python3 -m pip install html5lib
python3 -m pytest --durations 25
open "tests/test_build_html.py"
search_file 'def test_html_code_role' tests/test_build_html.py
goto 1706
python3 -m pytest tests/test_build_html.py::test_html_code_role -v
find /tmp/pytest-of-root -name index.html
cat /tmp/pytest-of-root/pytest-3/reST-code-role/_build/html/index.html
edit '<span class="k">def</span> <span class="nf">foo</span><span class="p">(</span><span class="mi">1</span> <span class="o">+</span> <span class="mi">2</span> <span class="o">+</span> <span class="kc">None</span> <span class="o">+</span> <span class="s2">&quot;abc&quot;</span><span class="p">):</span> <span class="k">pass</span>' '<span class="k">def</span><span class="w"> </span><span class="nf">foo</span><span class="p">(</span><span class="mi">1</span> <span class="o">+</span> <span class="mi">2</span> <span class="o">+</span> <span class="kc">None</span> <span class="o">+</span> <span class="s2">&quot;abc&quot;</span><span class="p">):</span> <span class="k">pass</span>' True
open "tests/test_build_html.py"
goto 1706
edit '<span class="k">def</span> <span class="nf">foo</span>' '<span class="k">def</span><span class="w"> </span><span class="nf">foo</span>' True
python3 -m pytest tests/test_build_html.py::test_html_code_role -v
python3 -m pytest
open "tests/test_build_latex.py"

