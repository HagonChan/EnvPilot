
find_file '*.yml'
find_file '*.yaml'
find_file '*.yml' /testbed/.github/workflows
find_file '*.yml' /testbed
find_file '*.yaml' /testbed
find_file '*setup.py' /testbed
find_file requirements.txt /testbed
find_file README.md /testbed
find_file '*Makefile' /testbed
open "/testbed/Makefile"
find_file '*' /testbed/tests
open "/testbed/tests/integration/README.md"
go version
apt update
apt install -y golang

