ls -la
ls -la .github/workflows
open ".github/workflows/main.yml"
apt-get update && apt-get install -y graphviz
python3 -m pip install -U pip tox
apt-get update && apt-get install -y python3 python3-pip
python3 -m pip install -U tox
python3 --version && pip --version && tox --version
tox -vv
open "tox.ini"
python3 -m pip install -e .[test,lint]
tox -e flake8
tox -e mypy
open "sphinx/application.py" 1316
edit 'warnings.warn('"'"'app.html_themes is deprecated.'"'"',
                      RemovedInSphinx60Warning)' 'warnings.warn('"'"'app.html_themes is deprecated.'"'"',
                      RemovedInSphinx60Warning, stacklevel=2)'
open "sphinx/builders/linkcheck.py" 190
edit 'with open(output_text, '"'"'w'"'"', encoding="utf-8") as self.txt_outfile,\n             open(output_json, '"'"'w'"'"', encoding="utf-8") as self.json_outfile:' 'with open(output_text, '"'"'w'"'"', encoding="utf-8") as self.txt_outfile, \
             open(output_json, '"'"'w'"'"', encoding="utf-8") as self.json_outfile:'
edit 'with open(output_text, '"'"'w'"'"', encoding="utf-8") as self.txt_outfile,' 'with open(output_text, '"'"'w'"'"', encoding="utf-8") as self.txt_outfile, '
tox -e flake8
open "sphinx/directives/patches.py" 87
edit 'warnings.warn('"'"'RSTTable is deprecated.'"'"',
                      RemovedInSphinx60Warning)' 'warnings.warn('"'"'RSTTable is deprecated.'"'"',
                      RemovedInSphinx60Warning, stacklevel=2)'
edit 'warnings.warn('"'"'ListTable is deprecated.'"'"',
                      RemovedInSphinx60Warning)' 'warnings.warn('"'"'ListTable is deprecated.'"'"',
                      RemovedInSphinx60Warning, stacklevel=2)'
tox -e flake8
open "sphinx/domains/python.py" 514
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
                    RemovedInSphinx60Warning, stacklevel=2)'
open "sphinx/util/i18n.py" 173
edit 'warnings.warn('"'"'The locale argument for babel_format_date() becomes required.'"'"',
                      RemovedInSphinx70Warning)' 'warnings.warn('"'"'The locale argument for babel_format_date() becomes required.'"'"',
                      RemovedInSphinx70Warning, stacklevel=2)'
edit 'warnings.warn('"'"'The language argument for format_date() becomes required.'"'"',
                      RemovedInSphinx70Warning)' 'warnings.warn('"'"'The language argument for format_date() becomes required.'"'"',
                      RemovedInSphinx70Warning, stacklevel=2)'
tox -e flake8
open "sphinx/transforms/__init__.py" 284
edit 'warnings.warn('"'"'FigureAilgner is deprecated.'"'"',
                      RemovedInSphinx60Warning)' 'warnings.warn('"'"'FigureAilgner is deprecated.'"'"',
                      RemovedInSphinx60Warning, stacklevel=2)'
open "sphinx/util/docutils.py" 361
edit 'warnings.warn('"'"'is_html5_writer_available() is deprecated.'"'"',
                  RemovedInSphinx70Warning)' 'warnings.warn('"'"'is_html5_writer_available() is deprecated.'"'"',
                  RemovedInSphinx70Warning, stacklevel=2)'
open "sphinx/util/jsdump.py" 12
edit 'warnings.warn('"'"'"sphinx.util.jsdump" has been deprecated. Please use "json" instead.'"'"',
              RemovedInSphinx70Warning)' 'warnings.warn('"'"'"sphinx.util.jsdump" has been deprecated. Please use "json" instead.'"'"',
              RemovedInSphinx70Warning, stacklevel=2)'
tox -e flake8
open "sphinx/util/smartypants.py" 34
edit 'warnings.warn('"'"'sphinx.util.smartypants is deprecated.'"'"',
              RemovedInSphinx60Warning)' 'warnings.warn('"'"'sphinx.util.smartypants is deprecated.'"'"',
              RemovedInSphinx60Warning, stacklevel=2)'
open "sphinx/registry.py" 323
edit 'warnings.warn('"'"'SphinxComponentRegistry.get_source_input() is deprecated.'"'"',
                      RemovedInSphinx60Warning)' 'warnings.warn('"'"'SphinxComponentRegistry.get_source_input() is deprecated.'"'"',
                      RemovedInSphinx60Warning, stacklevel=2)'
tox -e flake8
open "sphinx/ext/napoleon/docstring.py" 843
edit 'warnings.warn('"'"'%s._qualify_name() is deprecated.'"'"' %
                      self.__class__.__name__, RemovedInSphinx60Warning)' 'warnings.warn('"'"'%s._qualify_name() is deprecated.'"'"' %
                      self.__class__.__name__, RemovedInSphinx60Warning, stacklevel=2)'
open "sphinx/ext/napoleon/iterators.py" 9
edit 'warnings.warn('"'"'sphinx.ext.napoleon.iterators is deprecated.'"'"',
              RemovedInSphinx70Warning)' 'warnings.warn('"'"'sphinx.ext.napoleon.iterators is deprecated.'"'"',
              RemovedInSphinx70Warning, stacklevel=2)'
tox -e flake8
open "sphinx/ext/autodoc/__init__.py" 2390
edit 'warnings.warn('"'"'AttributeDocumenter._datadescriptor() is deprecated.'"'"',
                      RemovedInSphinx60Warning)' 'warnings.warn('"'"'AttributeDocumenter._datadescriptor() is deprecated.'"'"',
                      RemovedInSphinx60Warning, stacklevel=2)'
open "sphinx/ext/autodoc/__init__.py" 2390

