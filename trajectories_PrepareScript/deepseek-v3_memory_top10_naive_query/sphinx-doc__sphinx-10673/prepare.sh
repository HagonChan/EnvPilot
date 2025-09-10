ls -la
ls -la .github/workflows
open ".github/workflows/main.yml"
apt-get install -y graphviz
python -m pip install -U pip tox
apt-get update && apt-get install -y python3 python3-pip
python3 -m pip install -U pip tox
open "tox.ini"
tox
python3 -m pip install -U sphinxcontrib-applehelp
python3 -m pip install -U alabaster babel docutils imagesize Jinja2 Pygments requests snowballstemmer sphinxcontrib-devhelp sphinxcontrib-htmlhelp sphinxcontrib-jsmath sphinxcontrib-qthelp sphinxcontrib-serializinghtml
python3 -m pip install -U "alabaster<0.8,>=0.7" "docutils<0.20,>=0.14"
tox
open "./sphinx/application.py"
edit 'warnings.warn("The '"'"'sphinx.ext.%s'"'"' extension is deprecated. Please use '"'"'sphinx.ext.%s'"'"' instead." % (old, new), DeprecationWarning)' 'warnings.warn("The '"'"'sphinx.ext.%s'"'"' extension is deprecated. Please use '"'"'sphinx.ext.%s'"'"' instead." % (old, new), DeprecationWarning, stacklevel=2)' False
search_file warnings.warn ./sphinx/application.py
edit 'warnings.warn('"'"'app.html_themes is deprecated.'"'"',' 'warnings.warn('"'"'app.html_themes is deprecated.'"'"', stacklevel=2,' False
open "./sphinx/builders/linkcheck.py"
goto 190
edit 'with open(output_text, '"'"'w'"'"', encoding="utf-8") as self.txt_outfile,\' 'with open(output_text, '"'"'w'"'"', encoding="utf-8") as self.txt_outfile, \' False
tox -e flake8
open "./sphinx/application.py"
goto 1317
edit 'warnings.warn('"'"'app.html_themes is deprecated.'"'"', stacklevel=2,
                      RemovedInSphinx60Warning)' 'warnings.warn('"'"'app.html_themes is deprecated.'"'"', RemovedInSphinx60Warning, stacklevel=2)' False
open "./sphinx/directives/patches.py"
goto 87
edit 'warnings.warn('"'"'RSTTable is deprecated.'"'"',
                      RemovedInSphinx60Warning)' 'warnings.warn('"'"'RSTTable is deprecated.'"'"', RemovedInSphinx60Warning, stacklevel=2)' False
edit 'warnings.warn('"'"'ListTable is deprecated.'"'"',
                      RemovedInSphinx60Warning)' 'warnings.warn('"'"'ListTable is deprecated.'"'"', RemovedInSphinx60Warning, stacklevel=2)' False
tox -e flake8
open "./sphinx/domains/python.py"
goto 514
edit 'warnings.warn(
                    "Python directive method get_signature_prefix()"
                    " returning a string is deprecated."
                    " It must now return a list of nodes."
                    " Return value was '"'"'{}'"'"'.".format(sig_prefix),
                    RemovedInSphinx60Warning)' 'warnings.warn(
                    "Python directive method get_signature_prefix()"
                    " returning a string is deprecated."
                    " It must now return a list of nodes."
                    " Return value was '"'"'{}'"'"'.".format(sig_prefix),
                    RemovedInSphinx60Warning, stacklevel=2)' False
open "./sphinx/ext/autodoc/__init__.py"
goto 617
edit 'warnings.warn('"'"'The implementation of Documenter.get_object_members() will be '"'"'
                      '"'"'removed from Sphinx-6.0.'"'"', RemovedInSphinx60Warning)' 'warnings.warn('"'"'The implementation of Documenter.get_object_members() will be '"'"'
                      '"'"'removed from Sphinx-6.0.'"'"', RemovedInSphinx60Warning, stacklevel=2)' False
goto 2390
edit 'warnings.warn('"'"'AttributeDocumenter._datadescriptor() is deprecated.'"'"',
                      RemovedInSphinx60Warning)' 'warnings.warn('"'"'AttributeDocumenter._datadescriptor() is deprecated.'"'"',
                      RemovedInSphinx60Warning, stacklevel=2)' False
tox -e flake8
open "./sphinx/ext/napoleon/docstring.py"
goto 843
edit 'warnings.warn('"'"'%s._qualify_name() is deprecated.'"'"' %
                      self.__class__.__name__, RemovedInSphinx60Warning)' 'warnings.warn('"'"'%s._qualify_name() is deprecated.'"'"' %
                      self.__class__.__name__, RemovedInSphinx60Warning, stacklevel=2)' False
open "./sphinx/util/i18n.py"
goto 173
edit 'warnings.warn('"'"'The locale argument for babel_format_date() becomes required.'"'"',
                      RemovedInSphinx70Warning)' 'warnings.warn('"'"'The locale argument for babel_format_date() becomes required.'"'"',
                      RemovedInSphinx70Warning, stacklevel=2)' False
edit 'warnings.warn('"'"'The language argument for format_date() becomes required.'"'"',
                      RemovedInSphinx70Warning)' 'warnings.warn('"'"'The language argument for format_date() becomes required.'"'"',
                      RemovedInSphinx70Warning, stacklevel=2)' False
tox -e flake8
open "./sphinx/domains/rst.py"
goto 113
edit 'name, argument = re.split(r'"'"'\s*:\s+'"'"', sig.strip(), 1)' 'name, argument = re.split(r'"'"'\s*:\s+'"'"', sig.strip(), maxsplit=1)' False

