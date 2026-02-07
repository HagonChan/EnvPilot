ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
open "Makefile"
open "README.md"
sudo apt-get update && sudo apt-get install -y tcl8.6 tclx
apt-get update && apt-get install -y tcl8.6 tclx
make
apt-get install -y build-essential
make
make test
make test
